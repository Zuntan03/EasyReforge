@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set CIVITAI_MODEL=%EASY_TOOLS%\Download\CivitaiModel.bat
pushd %~dp0..\..\..\Model\ControlNet

@REM https://civitai.com/models/929685?modelVersionId=1044514
call %CIVITAI_MODEL% NoobE\ NoobNormal_v05.safetensors 929685 1044514
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\ControlNet
