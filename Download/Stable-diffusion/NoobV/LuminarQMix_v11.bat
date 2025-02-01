@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\..\Model\Stable-diffusion

@REM https://huggingface.co/hybskgks28275/LuminarQMix_vPred_v11.x
call %HUGGING_FACE% NoobV\ LuminarQMix_v11.safetensors hybskgks28275/LuminarQMix_vPred_v11 LuminarQMix_vPred_v11.safetensors?
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\Stable-diffusion
