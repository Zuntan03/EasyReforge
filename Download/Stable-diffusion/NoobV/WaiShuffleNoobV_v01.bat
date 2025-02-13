@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set CIVITAI_MODEL=%EASY_TOOLS%\Download\CivitaiModel.bat
pushd %~dp0..\..\..\Model\Stable-diffusion

@REM https://civitai.com/models/989367?modelVersionId=1202076
call %CIVITAI_MODEL% NoobV\ WaiShuffleNoobV_v01.safetensors 989367 1202076
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\Stable-diffusion
