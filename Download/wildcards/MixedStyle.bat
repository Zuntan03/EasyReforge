@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\EasyTools
set CIVITAI_MODEL_UNZIP=%EASY_TOOLS%\Download\CivitaiModelUnzip.bat
pushd %~dp0..\..\Model\wildcards

@REM https://civitai.com/models/924258?modelVersionId=1034550
call %CIVITAI_MODEL_UNZIP% .\ MixedStyle.txt 924258 1034550
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

if exist "mixed_artists_wildcards.txt" (
	echo ren "mixed_artists_wildcards.txt" MixedStyle.txt
	ren "mixed_artists_wildcards.txt" MixedStyle.txt
)

popd rem %~dp0..\..\..\Model\wildcards
