# ============================================================================
# ASEM-51 8051 組合語言專案自動化建置 Makefile
# ============================================================================
# 適用組譯器：ASEM-51 v1.3 (ASEMW.EXE / ASEMX.EXE / ASEM.EXE)
# 適用 make  ：MinGW-make 3.82+ / MSYS2-make 3.82+（使用 .ONESHELL 功能）
# 適用平台  ：Windows
# ============================================================================

# ----------------------------------------------------------------------------
# 1. 核心配置參數（可依需求調整）
# ----------------------------------------------------------------------------

# ASEM-51 安裝根目錄路徑（相對於專案根目錄或絕對路徑）
ASEM51_DIR := asem5113

# ASEM-51 組譯器執行檔
#   ASEMW.EXE = Win32 主控台版本（建議使用，支援長檔名與現代 Windows）
#   ASEMX.EXE = DOS 保護模式版本（需 DPMI 環境，舊版相容）
#   ASEM.EXE  = DOS 真實模式版本（16 位元，極舊系統才需使用）
ASEM51_BIN := ASEMW.EXE

# ASEM-51 組譯器完整路徑
ASEM51 := $(ASEM51_DIR)/$(ASEM51_BIN)

# MCU 定義檔(.MCU)目錄，對應 ASEM51INC 環境變數
# 由 ASEM-51 安裝包提供，包含各種 8051 衍生晶片的 SFR 暫存器定義
ASEM51_MCU_DIR := $(ASEM51_DIR)/MCU

# 來源檔案根目錄：掃描 .a51 組合語言原始檔的起始目錄
#   "." 表示從專案根目錄（含所有子目錄）開始掃描
SRC_DIR := .

# 來源檔案副檔名清單（同時支援大小寫 .a51 / .A51）
SRC_EXT_LIST := a51 A51

# 輸出檔案目錄：所有組譯產物統一存放於此（保留原始檔案的子目錄階層）
BUILD_DIR := build

# 組譯器選項（完整說明請參閱 asem5113/HTML/DOSCMD.HTM）
#   /INCLUDES:path1;path2;...  - 額外的 include 檔搜尋路徑
#   /DEFINE:symbol[:value[:t]] - 於命令列預先定義符號（搭配條件式組譯）
#   /OMF-51                    - 產生絕對 OMF-51 格式(.omf)，預設為 Intel-HEX(.hex)
#   /COLUMNS                   - 錯誤訊息附加欄位編號（便於 IDE 整合點擊跳行）
#   /QUIET                     - 安靜模式，僅顯示錯誤與警告
ASEM51_FLAGS := /COLUMNS

# 目標檔案格式與對應副檔名
#   HEX -> .hex  Intel HEX 格式（絕大多數 EPROM 燒錄器通用）
#   OMF -> .omf  絕對 OMF-51 格式（模擬器 / 除錯器使用）
OBJ_FORMAT := HEX
OBJ_EXT    := hex

# ----------------------------------------------------------------------------
# 2. 進階設定（通常不需修改）
# ----------------------------------------------------------------------------

# 列表檔(listing)副檔名
LST_EXT := lst

# 若選擇 OMF 格式，自動加入 /OMF-51 旗標並調整輸出副檔名
ifeq ($(strip $(OBJ_FORMAT)),OMF)
    ASEM51_FLAGS += /OMF-51
    OBJ_EXT := omf
endif

# Windows 環境設定：強制使用 cmd.exe 作為 shell，避免 MSYS2 自動切換至 sh
SHELL := cmd.exe
# .SHELLFLAGS：傳遞給 cmd.exe 的引數，/c 代表「執行字串後結束」
.SHELLFLAGS := /c

# make 直譯選項
#   .DELETE_ON_ERROR：規則執行失敗時，自動刪除不完整的目標檔案
#   .ONESHELL：同規則的所有配方列在「同一個 shell 程序」中執行
#              （GNU make 3.82+ 支援；此功能是確保 set 環境變數能被
#               後續指令讀取、exit /b 1 能正確中斷整個規則的關鍵）
.DELETE_ON_ERROR:
.ONESHELL:

# 宣告偽目標：不對應實體檔案，不受同名檔案存在影響而跳過執行
.PHONY: all clean verify help single single-verify single-clean

# ----------------------------------------------------------------------------
# 3. 自動掃描來源檔案
# ----------------------------------------------------------------------------

# 專案根目錄絕對路徑（供後續相對路徑轉換使用）
ROOT_DIR_ABS := $(abspath .)

# 使用 dir /s /b 遞迴搜尋 SRC_DIR 下所有副檔名符合 SRC_EXT_LIST 的檔案
# 僅掃描第一個副檔名（Windows 不區分大小寫，.a51 與 .A51 會同時被找到）
SRCS_ABS :=
$(eval SRCS_ABS += $(shell dir /s /b "$(subst /,\,$(SRC_DIR))\*.$(firstword $(SRC_EXT_LIST))" 2>nul))
SRCS_ABS := $(strip $(SRCS_ABS))

# 將反斜線統一為正斜線，並把「絕對路徑」修剪為相對於專案根的路徑
ROOT_DIR_ABS_FS := $(subst \,/,$(ROOT_DIR_ABS))
SRCS := $(subst \,/,$(SRCS_ABS))
SRCS := $(patsubst $(ROOT_DIR_ABS_FS)/%,%,$(SRCS))
SRCS := $(strip $(SRCS))

# 過濾掉 ASEM-51 安裝目錄內的範例檔（避免誤組譯第三方 DEMO / BLINK 等）
# 使用 sort 順便去除重複項目
SRCS := $(filter-out $(ASEM51_DIR)/%,$(SRCS))
SRCS := $(sort $(SRCS))

# 依每個副檔名，將 SRCS 轉換為對應的輸出檔案路徑
# 範例：Assignment01/01.a51  ->  build/Assignment01/01.hex 與 01.lst
OBJS :=
LSTS :=
$(foreach ext,$(SRC_EXT_LIST),\
    $(eval _cur := $(filter %.$(ext),$(SRCS)))\
    $(eval OBJS += $(patsubst %.$(ext),$(BUILD_DIR)/%.$(OBJ_EXT),$(_cur)))\
    $(eval LSTS += $(patsubst %.$(ext),$(BUILD_DIR)/%.$(LST_EXT),$(_cur)))\
)
OBJS := $(strip $(OBJS))
LSTS := $(strip $(LSTS))

# 所有輸出檔案所在的目錄清單（去除重複項，供後續自動建立目錄使用）
BUILD_SUBDIRS := $(sort $(dir $(OBJS)))

# ----------------------------------------------------------------------------
# 4. 預設建置入口
# ----------------------------------------------------------------------------

# 若未偵測到任何 .a51 檔，預設目標改為 help（友善提示使用者）
ifeq ($(strip $(SRCS)),)
.DEFAULT_GOAL := help
endif

# all：建置所有專案內的組合語言檔案，並通過驗證步驟
all: verify
	@echo.
	@echo ============================================================
	@echo  建置完成！共處理 $(words $(SRCS)) 個原始檔，產生 $(words $(OBJS)) 個 $(OBJ_FORMAT) 檔。
	@echo  輸出目錄：$(abspath $(BUILD_DIR))
	@echo ============================================================

# ----------------------------------------------------------------------------
# 5. 建置規則：單一 .a51 / .A51 原始檔 -> .$(OBJ_EXT) + .lst
# ----------------------------------------------------------------------------
#
# ASEM-51 命令格式：
#   ASEM <source> [<object> [<listing>]] [options]
#
# 規則重點說明：
#   [1] 單一規則「同時產生」.hex(或.omf) 與 .lst 兩個檔案
#   [2] 僅順序性依賴 (|) 所屬目錄：目錄的時間戳不影響目標檔的新舊判斷
#   [3] 執行前先設定 ASEM51INC 環境變數，讓 ASEM-51 得以找尋 .MCU 檔案
#   [4] ASEM 結束碼非零時（組譯失敗），列印錯誤摘要並以 exit /b 1 中斷 make
#   [5] 搭配 .DELETE_ON_ERROR：若中途失敗，自動刪除已寫出的不完整 .hex/.lst
#
# 下方直接為 .a51 與 .A51 各寫一條模式規則，避免雙層 define/call 導致的
# 自動變數 ($< / $@) 提前展開問題。

# 模式規則 1：副檔名 .a51（小寫）
$(BUILD_DIR)/%.$(OBJ_EXT) $(BUILD_DIR)/%.$(LST_EXT): %.a51
	@echo off
	echo.
	echo ------------------------------------------------------------
	echo  組譯：$<
	echo ------------------------------------------------------------
	if not exist "$(subst /,\,$(dir $@))" mkdir "$(subst /,\,$(dir $@))"
	set ASEM51INC=$(abspath $(ASEM51_MCU_DIR))
	"$(abspath $(ASEM51))" "$(subst /,\,$<)" "$(subst /,\,$(basename $@).$(OBJ_EXT))" "$(subst /,\,$(basename $@).$(LST_EXT))" $(ASEM51_FLAGS)
	if errorlevel 1 (
	    echo.
	    echo 【錯誤】組譯失敗，原始檔：$<
	    echo 請檢查上方 ASEM-51 輸出的錯誤訊息，修正後重新執行 make。
	    echo.
	    exit /b 1
	)

# 模式規則 2：副檔名 .A51（大寫，與上同）
$(BUILD_DIR)/%.$(OBJ_EXT) $(BUILD_DIR)/%.$(LST_EXT): %.A51
	@echo off
	echo.
	echo ------------------------------------------------------------
	echo  組譯：$<
	echo ------------------------------------------------------------
	if not exist "$(subst /,\,$(dir $@))" mkdir "$(subst /,\,$(dir $@))"
	set ASEM51INC=$(abspath $(ASEM51_MCU_DIR))
	"$(abspath $(ASEM51))" "$(subst /,\,$<)" "$(subst /,\,$(basename $@).$(OBJ_EXT))" "$(subst /,\,$(basename $@).$(LST_EXT))" $(ASEM51_FLAGS)
	if errorlevel 1 (
	    echo.
	    echo 【錯誤】組譯失敗，原始檔：$<
	    echo 請檢查上方 ASEM-51 輸出的錯誤訊息，修正後重新執行 make。
	    echo.
	    exit /b 1
	)

# ----------------------------------------------------------------------------
# 6. 輸出目錄自動建立（僅順序性依賴）
# ----------------------------------------------------------------------------

# 建立輸出根目錄 build
$(BUILD_DIR):
	@echo off
	echo 建立輸出目錄：$@
	if not exist "$(subst /,\,$@)" mkdir "$(subst /,\,$@)"

# 動態為每個子目錄產生規則，並以 only-order 依賴 "|" 確保根目錄優先建立
define BUILD_DIR_template
$(1): | $(BUILD_DIR)
	@if not exist "$(subst /,\,$(1))" mkdir "$(subst /,\,$(1))"
endef
$(foreach d,$(BUILD_SUBDIRS),$(eval $(call BUILD_DIR_template,$(d))))

# ----------------------------------------------------------------------------
# 7. 建置驗證步驟：檢查所有輸出檔有效性
# ----------------------------------------------------------------------------
#
# verify：在所有 .hex/.lst 均生成完畢後，逐一進行以下檢查
#   檢查項目：
#     1. 對應的 .$(OBJ_EXT) 檔案是否存在
#     2. 對應的 .lst 列表檔是否存在
#     3. Intel HEX 格式檢查：檔案第一個字元需為 ':' (資料記錄的開頭)
#   致命錯誤(1/2)會以 exit /b 1 立即中斷 make，格式異常(3)僅顯示警告
#

verify: $(OBJS) $(LSTS)
	@echo off
	echo.
	echo ============================================================
	echo  執行建置驗證...
	echo ============================================================
	$(foreach obj,$(OBJS),\
	    echo. & \
	    echo 驗證：$(obj) & \
	    if not exist "$(subst /,\,$(obj))" ( \
	        echo 【錯誤】遺失 $(OBJ_FORMAT) 檔：$(obj) & exit /b 1 ) & \
	    if not exist "$(subst /,\,$(basename $(obj)).$(LST_EXT))" ( \
	        echo 【錯誤】遺失列表檔：$(basename $(obj)).$(LST_EXT) & exit /b 1 ) & \
	    cmd /v:on /c "set /p _h=^<\"$(subst /,\,$(obj))\" & if /i not \"!_h:~0,1!\"==\":\" ( \
	        echo 【警告】$(OBJ_FORMAT) 檔首列非 ':'，可能非標準 Intel-HEX 格式 ) \
	    else ( echo   OK - 格式通過 )" & \
	) rem end_foreach
	echo.
	echo 全部驗證通過。

# ----------------------------------------------------------------------------
# 8. 清理功能：移除所有建置產物
# ----------------------------------------------------------------------------

# clean：完整刪除 BUILD_DIR 目錄（含所有 .hex/.lst/.omf、子目錄）
#   若 BUILD_DIR 不存在，會顯示友善訊息略過，不回報錯誤
clean:
	@echo off
	echo.
	echo ============================================================
	echo  清理建置產物...
	echo ============================================================
	if exist "$(subst /,\,$(BUILD_DIR))" (
	    echo 刪除目錄：$(abspath $(BUILD_DIR))
	    rmdir /s /q "$(subst /,\,$(BUILD_DIR))"
	    echo 清理完成。
	) else (
	    echo 無須清理，$(BUILD_DIR) 目錄不存在。
	)
	echo.

# ----------------------------------------------------------------------------
# 10. 單檔建置（VS Code CTRL+SHIFT+B 快捷鍵呼叫）
# ----------------------------------------------------------------------------

# single：單一 .a51 / .A51 檔案組譯（用法：make single CURRENT_FILE=檔案路徑）
#
# 特色：
#   - CURRENT_FILE 可接受絕對路徑或相對於專案根的相對路徑
#   - .hex(或.omf) 與 .lst 皆輸出到「原始檔所在的同一目錄」（不移到 build/）
#   - 詳細日誌：建置前參數摘要、組譯進度、結果摘要三階段顯示
#   - 防呆機制：未指定 CURRENT_FILE / 檔案不存在 / 非 .a51 or .A51
#     三種錯誤狀況皆會中斷 make 並回報中文說明
#   - ASEM-51 錯誤處理：結束碼非零立即中斷，提示常見錯誤類型
#
# 範例：
#   make single CURRENT_FILE=Assignment01/01.a51
#   make single CURRENT_FILE="d:\code\Project\Assignment02\02.a51"

# 【單檔路徑展開 — make 層級（完全避開 .ONESHELL + cmd %VAR% 立即擴展問題）】
# CURRENT_FILE 由命令列或 VS Code tasks.json 傳入，先正規化為正斜線再處理
_SINGLE_SRC_NORM := $(subst \,/,$(CURRENT_FILE))
_SINGLE_SRC_FS   := $(subst /,\,$(_SINGLE_SRC_NORM))
# 同時處理 .a51 與 .A51 兩種大小寫副檔名，抽出不含副檔名的基底路徑
_SINGLE_BASE     := $(patsubst %.A51,%,$(patsubst %.a51,%,$(_SINGLE_SRC_NORM)))
_SINGLE_OBJ      := $(_SINGLE_BASE).$(OBJ_EXT)
_SINGLE_OBJ_FS   := $(subst /,\,$(_SINGLE_OBJ))
_SINGLE_LST      := $(_SINGLE_BASE).$(LST_EXT)
_SINGLE_LST_FS   := $(subst /,\,$(_SINGLE_LST))
# 組譯器與 include 目錄絕對路徑
_SINGLE_ASEMW    := $(abspath $(ASEM51))
_SINGLE_MCUINC   := $(abspath $(ASEM51_MCU_DIR))

single:
	@echo off
	$(if $(strip $(CURRENT_FILE)),,$(error 【make 錯誤】未指定 CURRENT_FILE，請使用：make single CURRENT_FILE=path/to/file.a51))
	$(if $(filter %.a51 %.A51,$(CURRENT_FILE)),,$(error 【make 錯誤】$(CURRENT_FILE) 副檔名不合法，僅支援 .a51 或 .A51))
	$(if $(wildcard $(CURRENT_FILE)),,$(error 【make 錯誤】找不到原始檔：$(CURRENT_FILE) ，請確認路徑))
	echo.
	echo ============================================================
	echo  ASEM-51 單檔建置
	echo ============================================================
	echo.
	echo  原始檔        : $(_SINGLE_SRC_FS)
	echo  輸出 $(OBJ_FORMAT) 檔 : $(_SINGLE_OBJ_FS)
	echo  輸出列表檔      : $(_SINGLE_LST_FS)
	echo.
	echo ------------------------------------------------------------
	echo  開始組譯...
	echo ------------------------------------------------------------
	set ASEM51INC=$(_SINGLE_MCUINC)
	"$(_SINGLE_ASEMW)" "$(_SINGLE_SRC_FS)" "$(_SINGLE_OBJ_FS)" "$(_SINGLE_LST_FS)" $(ASEM51_FLAGS)
	if errorlevel 1 (
		echo.
		echo ============================================================
		echo  【建置失敗】ASEM-51 回傳錯誤。
		echo ============================================================
		echo.
		echo 請依據上方 ASEM-51 輸出修正原始檔後再次組譯。
		echo 常見錯誤類型：
		echo   - 語法錯誤 [syntax error]：指令拼字或運算元格式錯誤
		echo   - 未定義符號 [undefined symbol]：參考的標籤/符號不存在
		echo   - 位址溢位 [address overflow]：跳轉超出相對定址範圍
		echo   - include 路徑問題：ASEM51INC 設定錯誤導致找不到 .MCU/.a51
		echo.
		exit /b 1
	)
	echo.
	echo ------------------------------------------------------------
	echo  組譯完成，進行驗證...
	echo ------------------------------------------------------------
	echo.
	echo 驗證：$(_SINGLE_OBJ_FS)
	if not exist "$(_SINGLE_OBJ_FS)" ( echo 【錯誤】遺失 $(OBJ_FORMAT) 檔：$(_SINGLE_OBJ_FS) & exit /b 1 )
	if not exist "$(_SINGLE_LST_FS)" ( echo 【錯誤】遺失列表檔：$(_SINGLE_LST_FS) & exit /b 1 )
	findstr /B /C:":" "$(_SINGLE_OBJ_FS)" >nul 2>nul
	if errorlevel 1 ( echo 【警告】$(OBJ_FORMAT) 檔首列非 ':', 可能非標準 Intel-HEX 格式 ) else ( echo   OK - 格式通過 )
	echo.
	echo ============================================================
	echo  【建置成功】單檔建置完成。
	echo ============================================================
	echo   原始檔 : $(_SINGLE_SRC_FS)
	echo   $(OBJ_FORMAT) 檔 : $(_SINGLE_OBJ_FS)
	echo   列表檔  : $(_SINGLE_LST_FS)
	echo ============================================================
	echo.

# single-verify：驗證單一檔案對應的 .$(OBJ_EXT) 與 .lst 是否存在且格式合法
single-verify:
	@echo off
	$(if $(strip $(CURRENT_FILE)),,$(error 【make 錯誤】未指定 CURRENT_FILE，請使用：make single-verify CURRENT_FILE=path/to/file.a51))
	$(if $(filter %.a51 %.A51,$(CURRENT_FILE)),,$(error 【make 錯誤】$(CURRENT_FILE) 副檔名不合法，僅支援 .a51 或 .A51))
	echo.
	echo ============================================================
	echo  單檔驗證：$(_SINGLE_SRC_FS)
	echo ============================================================
	echo.
	echo 驗證：$(_SINGLE_OBJ_FS)
	if not exist "$(_SINGLE_OBJ_FS)" ( echo 【錯誤】遺失 $(OBJ_FORMAT) 檔：$(_SINGLE_OBJ_FS) & exit /b 1 )
	if not exist "$(_SINGLE_LST_FS)" ( echo 【錯誤】遺失列表檔：$(_SINGLE_LST_FS) & exit /b 1 )
	findstr /B /C:":" "$(_SINGLE_OBJ_FS)" >nul 2>nul
	if errorlevel 1 ( echo 【警告】$(OBJ_FORMAT) 檔首列非 ':'，可能非標準 Intel-HEX 格式 ) else ( echo   OK - 格式通過 )
	echo.
	echo 全部驗證通過。
	echo.

# single-clean：刪除單一檔案對應的 .$(OBJ_EXT) 與 .lst 輸出（不動 BUILD_DIR）
single-clean:
	@echo off
	$(if $(strip $(CURRENT_FILE)),,$(error 【make 錯誤】未指定 CURRENT_FILE，請使用：make single-clean CURRENT_FILE=path/to/file.a51))
	$(if $(filter %.a51 %.A51,$(CURRENT_FILE)),,$(error 【make 錯誤】$(CURRENT_FILE) 副檔名不合法，僅支援 .a51 或 .A51))
	echo.
	echo ============================================================
	echo  單檔清理：$(_SINGLE_SRC_FS)
	echo ============================================================
	echo.
	set "_CNT=0"
	if exist "$(_SINGLE_OBJ_FS)" (
			echo 刪除：$(_SINGLE_OBJ_FS)
			del /f /q "$(_SINGLE_OBJ_FS)"
			set /a _CNT+=1
	)
	if exist "$(_SINGLE_LST_FS)" (
			echo 刪除：$(_SINGLE_LST_FS)
			del /f /q "$(_SINGLE_LST_FS)"
			set /a _CNT+=1
	)
	if "%_CNT%"=="0" (
			echo 無須清理，未偵測到對應的 $(OBJ_FORMAT) 檔與列表檔。
	) else (
			echo.
			echo 完成，共刪除 %_CNT% 個檔案。
	)
	echo.

# ----------------------------------------------------------------------------
# 9. 求助訊息
# ----------------------------------------------------------------------------

# help：顯示 Makefile 的使用方式、當前配置、以及偵測到的原始檔列表

# 預先計算 help 中最後一段訊息（ifeq/else/endif 必須放在配方之外的 make 層級解析）
ifeq ($(words $(SRCS)),0)
HELP_SRC_MSG := 	echo   （未偵測到任何 .a51 原始檔，請確認副檔名是否為 .a51 或 .A51）
else
define HELP_SRC_MSG

	echo.
	echo 偵測到的原始檔列表：
	$(foreach s,$(SRCS),echo   - $(s) & ) rem
endef
endif

help:
	@echo off
	echo.
	echo ============================================================
	echo  ASEM-51 8051 組合語言專案 Makefile 使用說明
	echo ============================================================
	echo.
	echo 可用目標：
	echo   make all       - 建置所有 .a51 原始檔並驗證（預設目標）
	echo   make clean     - 刪除所有建置產物（移除 $(BUILD_DIR) 目錄）
	echo   make verify    - 建置並驗證所有輸出檔之有效性
	echo   make help      - 顯示本說明訊息
	echo   make single CURRENT_FILE=path - 單檔組譯（VS Code 快捷鍵 Ctrl+Shift+B 呼叫）
	echo   make single-clean CURRENT_FILE=path - 刪除單檔對應的 hex/lst 輸出
	echo   make single CURRENT_FILE=path - 單檔組譯（VS Code 快捷鍵 Ctrl+Shift+B 呼叫）
	echo   make single-clean CURRENT_FILE=path - 刪除單檔對應輸出
	echo.
	echo 當前專案設定：
	echo   組譯器路徑     : $(abspath $(ASEM51))
	echo   MCU 定義目錄   : $(abspath $(ASEM51_MCU_DIR))
	echo   來源掃描根目錄 : $(abspath $(SRC_DIR))
	echo   輸出目錄       : $(abspath $(BUILD_DIR))
	echo   目標檔案格式   : $(OBJ_FORMAT)  (副檔名：.$(OBJ_EXT))
	echo   掃描到原始檔   : $(words $(SRCS)) 個
	$(HELP_SRC_MSG)
	echo.
