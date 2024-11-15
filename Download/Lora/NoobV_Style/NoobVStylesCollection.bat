@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set CIVITAI_MODEL=%EASY_TOOLS%\Download\CivitaiModel.bat
pushd %~dp0..\..\..\Model\Lora

@REM https://civitai.com/models/808215?modelVersionId=975316
call %CIVITAI_MODEL% NoobV\ NoobVStylesCollection.safetensors 808215 975316
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\Lora
pushd %~dp0..\..\..\Model\wildcards

if exist NoobStylesCollection.txt ( popd & exit /b 0 )
set CURL_CMD=C:\Windows\System32\curl.exe -kL

echo %CURL_CMD% -o NoobStylesCollection.txt https://files.catbox.moe/k8v34v.txt
%CURL_CMD% -o NoobStylesCollection.txt https://files.catbox.moe/k8v34v.txt

popd rem %~dp0..\..\..\Model\wildcards