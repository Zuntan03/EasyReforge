@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\EasyTools
set CIVITAI_MODEL_UNZIP=%EASY_TOOLS%\Download\CivitaiModelUnzip.bat
pushd %~dp0..\..\Model\wildcards

@REM https://civitai.com/models/813103?modelVersionId=909241
call %CIVITAI_MODEL_UNZIP% .\ Booru1girl.txt 813103 909241
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

if exist "CharacterBooru.txt" (
	echo ren "CharacterBooru.txt" Booru1girl.txt
	ren "CharacterBooru.txt" Booru1girl.txt
)

popd rem %~dp0..\..\..\Model\wildcards
