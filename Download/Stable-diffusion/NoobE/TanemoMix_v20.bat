@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set CIVITAI_MODEL=%EASY_TOOLS%\Download\CivitaiModel.bat
pushd %~dp0..\..\..\Model\Stable-diffusion

@REM https://civitai.com/models/1297977?modelVersionId=1535992
call %CIVITAI_MODEL% NoobE\ TanemoMix_v20_LCM_DDIM.safetensors 1297977 1535992
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\Stable-diffusion
