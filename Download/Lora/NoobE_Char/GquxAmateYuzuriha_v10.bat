@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set CIVITAI_MODEL=%EASY_TOOLS%\Download\CivitaiModel.bat
pushd %~dp0..\..\..\Model\Lora

@REM https://civitai.com/models/1009768?modelVersionId=1131846
call %CIVITAI_MODEL% NoobE_Char\ GquxAmateYuzuriha_v10.safetensors 1009768 1131846
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\Lora
