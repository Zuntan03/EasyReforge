@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\EasyTools
set GITHUB_CLONE_OR_PULL=%EASY_TOOLS%\Git\GitHub_CloneOrPull.bat

pushd %~dp0..\..

@REM echo https://github.com/Panchovix/stable-diffusion-webui-reForge/tree/dev
@REM https://github.com/Panchovix/stable-diffusion-webui-reForge/
call %GITHUB_CLONE_OR_PULL% Panchovix stable-diffusion-webui-reForge main 8ac78f65c97908a25c3f47b5311cc7268ff79eea
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd
pushd %~dp0..\..\stable-diffusion-webui-reForge

@REM @REM dev ブランチへの切り替え
@REM git switch -C dev origin/dev
@REM if %ERRORLEVEL% neq 0 ( pause & popd & exit /b 1 )

@REM @REM main ブランチへの切り替え extensions-builtin/reForge-advanced_model_sampling(_backported) が無い環境仮対策
@REM git switch -C main origin/main
@REM if %ERRORLEVEL% neq 0 ( pause & popd & exit /b 1 )

call %EASY_TOOLS%\Python\Python_Activate.bat
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

echo python -m pip install -qq --upgrade pip
python -m pip install -qq --upgrade pip
if %ERRORLEVEL% neq 0 ( pause & popd & exit /b 1 )

echo pip install -qq torch==2.3.1+cu121 torchvision --index-url https://download.pytorch.org/whl/cu121
pip install -qq torch==2.3.1+cu121 torchvision --index-url https://download.pytorch.org/whl/cu121
if %ERRORLEVEL% neq 0 ( pause & popd & exit /b 1 )

@REM CN Pidinet ModuleNotFoundError: No module named 'basicsr'
echo pip install -qq basicsr==1.4.2
pip install -qq basicsr==1.4.2
if %ERRORLEVEL% neq 0 ( pause & popd & exit /b 1 )

@REM fixed ImportError: cannot import name 'cached_download' from 'huggingface_hub'
@REM echo pip install -qq peft==0.13.2 huggingface-hub==0.25.2
@REM pip install -qq peft==0.13.2 huggingface-hub==0.25.2
@REM if %ERRORLEVEL% neq 0 ( pause & popd & exit /b 1 )

@REM Git 未インストール環境にて reForge から呼ばれる python -m pip が GIT 環境変数を参照せず、PATH も引き継いでいない？
if not exist extensions-backup\ (
	echo pip install -qqq -r requirements_versions.txt
	pip install -qqq -r requirements_versions.txt
	cd > NUL
)

if not exist extensions-builtin\sd_forge_controlnet\presets\ ( mkdir extensions-builtin\sd_forge_controlnet\presets )
echo xcopy /QY %~dp0src\txt2img_Inpaint_Unit*.txt extensions-builtin\sd_forge_controlnet\presets\
xcopy /QY %~dp0src\txt2img_Inpaint_Unit*.txt extensions-builtin\sd_forge_controlnet\presets\

popd
