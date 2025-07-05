@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\..\Model\ControlNet

@REM https://huggingface.co/2vXpSwA7/iroiro-lora
call %HUGGING_FACE% Sdxl\ AnyTest_Dim64_v10.safetensors 2vXpSwA7/iroiro-lora test_controlnet/CN-anytest_v1_dim64.safetensors?
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\ControlNet
