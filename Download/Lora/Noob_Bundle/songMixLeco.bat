@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE_HUB=%EASY_TOOLS%\Download\HuggingFaceHub.bat
set JUNCTION=%EASY_TOOLS%\Link\Junction.bat

pushd %~dp0

echo.
echo https://huggingface.co/yyy1026/songMix
echo call %HUGGING_FACE_HUB% %~n0\ yyy1026/songMix model *_LECO/**
call %HUGGING_FACE_HUB% %~n0\ yyy1026/songMix model *_LECO/**
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

echo call %JUNCTION% %~dp0..\..\..\Model\Lora\Noob_AntiNoiseLeco .\%~n0\AntiNoise_LECO
call %JUNCTION% %~dp0..\..\..\Model\Lora\Noob_AntiNoiseLeco .\%~n0\AntiNoise_LECO
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

echo call %JUNCTION% %~dp0..\..\..\Model\Lora\Noob_ReshapeBodyLeco .\%~n0\ReshapedBody_LECO
call %JUNCTION% %~dp0..\..\..\Model\Lora\Noob_ReshapeBodyLeco .\%~n0\ReshapedBody_LECO
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0
