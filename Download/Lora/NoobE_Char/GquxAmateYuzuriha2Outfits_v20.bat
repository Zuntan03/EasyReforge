@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set CIVITAI_MODEL=%EASY_TOOLS%\Download\CivitaiModel.bat
pushd %~dp0..\..\..\Model\Lora

@REM https://civitai.com/models/1407126?modelVersionId=1593642
call %CIVITAI_MODEL% NoobE_Char\ GquxAmateYuzuriha2Outfits_v20.safetensors 1407126 1593642
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\Lora
