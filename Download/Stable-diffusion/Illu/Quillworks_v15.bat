@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\..\Model\Stable-diffusion

@REM https://huggingface.co/Shakker-Labs/Illustrious-Quillworks-V15
call %HUGGING_FACE% Illu\ Quillworks_v15.safetensors Shakker-Labs/Illustrious-Quillworks-V15 QuillworksIllustrious_QuillworksV15.safetensors?
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\Stable-diffusion
