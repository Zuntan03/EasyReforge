@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\..\Model\ControlNet

@REM https://huggingface.co/kataragi/controlnetXL_inpaint
call %HUGGING_FACE% Sdxl\ Inpaint_Kataragi.safetensors kataragi/controlnetXL_inpaint Kataragi_inpaintXL-lora128.safetensors?
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\ControlNet
