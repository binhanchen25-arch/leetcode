#!/bin/bash

# 获取当前脚本所在目录
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR"

# 确保 README.md 存在
if [ ! -f "README.md" ]; then
    echo "# README" > README.md
fi

# 添加 hello world 到 README
echo "hello world - $(date '+%Y-%m-%d %H:%M:%S')" >> README.md

# Git 操作
git add README.md
git commit -m "Auto update: add hello world at $(date '+%Y-%m-%d %H:%M:%S')"
git push

