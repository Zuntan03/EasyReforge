@echo off
chcp 65001 > NUL

call %~dp0EasyTools\Git\Git_SetPath.bat
if %ERRORLEVEL% neq 0 ( exit /b 1 )

pushd %~dp0EasyTools
echo.
echo https://github.com/Zuntan03/EasyTools
echo git -C EasyTools fetch origin
git fetch origin
echo git -C EasyTools reset --hard origin/main
git reset --hard origin/main
if %ERRORLEVEL% neq 0 ( pause & popd & exit /b 1 )
popd

pushd %~dp0
echo.
echo https://github.com/Zuntan03/EasyReforge
echo git -C EasyReforge fetch origin
git fetch origin
echo git -C EasyReforge reset --hard origin/main
git reset --hard origin/main
if %ERRORLEVEL% neq 0 ( pause & popd & exit /b 1 )
popd

call %~dp0EasyReforge\Setup.bat
if %ERRORLEVEL% neq 0 ( exit /b 1 )
