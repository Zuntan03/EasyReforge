@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\..\Model\Stable-diffusion

@REM https://huggingface.co/OnomaAIResearch/Illustrious-XL-v2.0
call %HUGGING_FACE% Illu\ illustrious_v20.safetensors OnomaAIResearch/Illustrious-XL-v2.0 Illustrious-XL-v2.0.safetensors?
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\Stable-diffusion
