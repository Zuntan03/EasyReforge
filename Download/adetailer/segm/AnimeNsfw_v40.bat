@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set CIVITAI_MODEL_UNZIP=%EASY_TOOLS%\Download\CivitaiModelUnzip.bat
pushd %~dp0..\..\..\Model\adetailer

@REM https://civitai.com/models/1313556?modelVersionId=1863248
call %CIVITAI_MODEL_UNZIP% segm\ ntd11_anime_nsfw_segm_v4_all.pt 1313556 1863248
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\adetailer
