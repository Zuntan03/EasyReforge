@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\EasyTools
set RECURSIVE_BAT_CALL=%EASY_TOOLS%\Bat\RecursiveBatCall.bat

for /d %%d in ("%~dp0..\Stable-diffusion\Noob_*") do ( call "%RECURSIVE_BAT_CALL%" %%d )
for /d %%d in ("%~dp0..\Stable-diffusion\NoobE*") do ( call "%RECURSIVE_BAT_CALL%" %%d )
