# 微算機原理/微算機實習

time :　ｍon1-4 & tue2-4

teacher : 謝欽旭 (Chin-Shiuh Shieh)

[website](https://bit.kuas.edu.tw/~csshieh/)

MCU : AT89S51/AT89S52

Burner : SP200SE

IDE : Visual Studio Code

Assembler : ASEM-51 v1.3

Programmer : [偉納電子SP200SE](http://bit.nkust.edu.tw/~csshieh/misc/SP200SE.zip)

schematic drawing tool : DesignWorks Lite 4.04

[component library by Chin-Shiuh Shieh](https://bit.kuas.edu.tw/~8051/csshieh.clf)

## Use vscode to program

[8051 assembly highlighting plugin](https://github.com/teccheck/vscode-8051-assembly)

tasks:
```json
{
    "tasks": [
        {
            "type": "shell",
            "label": "ASEM-51: 組譯目前的 .a51 檔案",
            "command": "c:\\asem5113\\ASEMW.EXE",
            "args": [
                "${fileBasename}"
            ],
            "options": {
                "cwd": "${fileDirname}"
            },
            "group": {
                "kind": "build",
                "isDefault": true
            },
            "problemMatcher": {
                "pattern": {
                    "regexp": "^(.*)\\$(\\d+),*(\\d*)\\s*:\\s*(error|warning)\\s+(\\d+)\\s*:\\s*(.*)$",
                    "file": 1,
                    "line": 2,
                    "column": 3,
                    "severity": 4,
                    "code": 5,
                    "message": 6
                }
            },
            "detail": "使用 ASEM-51 組譯 8051 組合語言，產生 .hex 與 .lst 檔"
        }
    ],
    "version": "2.0.0"
}
```
