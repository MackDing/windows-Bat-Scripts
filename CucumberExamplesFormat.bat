@echo off
setlocal enabledelayedexpansion

rem 定义包含|分隔符的模板字符串（需补充所有数据项）
set "template=| ${data.OCMO.maker[0]} | ${data.OCMO.checker[0]} | ${data.cif.create[0]} | ${data.detail.prodCode[0]} | ${data.interest.interestType[0]} |"

rem 输出原始模板（带|）
:: echo !template!

rem 循环生成3行，替换角标[0]为[1]、[2]、[3]
for /l %%i in (1,1,3) do (
    set "newLine=!template:[0]=[%%i]!"
    echo !newLine!
)

endlocal