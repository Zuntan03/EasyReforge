@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\..\Model\Stable-diffusion

@REM https://huggingface.co/KKTT8823/botan_illustrious
call %HUGGING_FACE% Illu\ botan_v30.safetensors KKTT8823/botan_illustrious botan_illustrious2_V3_0.safetensors?
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\Stable-diffusion
