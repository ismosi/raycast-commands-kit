#!/bin/bash

# Raycast 配置（必须严格格式）
# @raycast.schemaVersion 1
# @raycast.title git status
# @raycast.mode fullOutput
# @raycast.argument1 { "type": "text", "placeholder": "项目名（可选）", "optional": true }
# @raycast.icon 💻
# @raycast.packageName 猪猪之家终端
# @raycast.description 快速查看 Git 仓库状态
# @raycast.author ismosi

# 1. 环境加载
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# 2. 智能目录定位
TARGET_DIR=""

if [ -n "$1" ]; then
  # 有参数：进入 ~/code/参数名
  TARGET_DIR="$HOME/code/$1"
else
  # 无参数：向上找 .git 目录
  CURRENT_DIR=$(pwd)
  while [[ "$CURRENT_DIR" != "/" ]]; do
    if [[ -d "$CURRENT_DIR/.git" ]]; then
      TARGET_DIR="$CURRENT_DIR"
      break
    fi
    CURRENT_DIR=$(dirname "$CURRENT_DIR")
  done

  # 找不到就默认 ~/code
  [ -z "$TARGET_DIR" ] && TARGET_DIR="$HOME/code"
fi

# 3. 执行 Git 命令
if [ -d "$TARGET_DIR" ]; then
  cd "$TARGET_DIR" || exit 1
  echo "📍 工作目录：$(pwd)"
  echo "----------------------------------------"
  git status 
else
  echo "❌ 目录不存在：$TARGET_DIR"
  exit 1
fi