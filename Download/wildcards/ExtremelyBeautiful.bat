@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\EasyTools
set CIVITAI_MODEL_UNZIP=%EASY_TOOLS%\Download\CivitaiModelUnzip.bat
pushd %~dp0..\..\Model\wildcards

@REM https://civitai.com/models/78026?modelVersionId=82802
call %CIVITAI_MODEL_UNZIP% ExtremelyBeautiful\ clothes.txt 78026 82802
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

if exist "ExtremelyBeautiful\Extremely beautiful clothes(different stlyes).txt" (
	echo ren "ExtremelyBeautiful\Extremely beautiful clothes(different stlyes).txt" "clothes.txt"
	ren "ExtremelyBeautiful\Extremely beautiful clothes(different stlyes).txt" "clothes.txt"
)

popd rem %~dp0..\..\..\Model\wildcards
