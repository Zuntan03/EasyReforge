@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\Model\ESRGAN

@REM https://huggingface.co/Kim2091/2x-AnimeSharpV4
call %HUGGING_FACE% .\ 2x-AnimeSharpV4_RCAN.safetensors Kim2091/2x-AnimeSharpV4
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\ESRGAN
