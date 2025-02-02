@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set CIVITAI_MODEL=%EASY_TOOLS%\Download\CivitaiModel.bat
pushd %~dp0..\..\..\Model\Lora

@REM https://civitai.com/models/1127871?modelVersionId=1339434
call %CIVITAI_MODEL% NoobE_Char\ Medalist_HikaruKamisaki_v10.safetensors 1127871 1339434
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\Lora
