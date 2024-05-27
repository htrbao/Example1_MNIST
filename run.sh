#!/bin/bash

# Tên của virtual environment
VENV_DIR="mnist_venv"

# Kiểm tra nếu virtual environment đã tồn tại
if [ -d "$VENV_DIR" ]; then
    echo "Virtual environment '$VENV_DIR' have existed."
else
    echo "Create virtual environment '$VENV_DIR'..."
    python3 -m venv "$VENV_DIR"
fi

# Kích hoạt virtual environment
source "$VENV_DIR/bin/activate"

# Kiểm tra và cài đặt torch nếu chưa có
if ! pip show torch > /dev/null 2>&1; then
    echo "Installing torch..."
    pip install torch
else
    echo "torch has been installed."
fi

# Kiểm tra và cài đặt torchvision nếu chưa có
if ! pip show torchvision > /dev/null 2>&1; then
    echo "Installing torchvision..."
    pip install torchvision
else
    echo "torchvision has been installed."
fi

python main.py

# Deactivate virtual environment
deactivate
