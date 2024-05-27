@echo off

:: Setup Name of Environment
set VENV_DIR=mnist_venv

:: Check if virtual environment already exists
if exist %VENV_DIR% (
    echo Virtual environment '%VENV_DIR%' have existed.
) else (
    echo Create virtual environment '%VENV_DIR%'...
    python -m venv %VENV_DIR%
)

:: Kích hoạt virtual environment
call %VENV_DIR%\Scripts\activate

:: Kiểm tra và cài đặt torch nếu chưa có
pip show torch >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo installing torch...
    pip install torch
) else (
    echo torch has been installed.
)

:: Kiểm tra và cài đặt torchvision nếu chưa có
pip show torchvision >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo installing torchvision...
    pip install torchvision
) else (
    echo torchvision has been installed.
)

python main.py

:: Deactivate virtual environment
deactivate
