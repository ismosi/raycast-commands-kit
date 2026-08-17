#!/bin/bash

# @raycast.schemaVersion 1
# @raycast.title npm start
# @raycast.mode silent
# @raycast.argument1 { "type": "text", "placeholder": "Project name", "optional": true }
# @raycast.icon 🚀
# @raycast.packageName 猪猪之家终端
# @raycast.description 自动在 Warp 运行 npm run dev
# @raycast.author ismosi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

if [ -n "$1" ]; then
  TARGET_DIR="$HOME/code/$1"
else
  CURRENT_DIR=$(pwd)
  TARGET_DIR=""
  while [[ "$CURRENT_DIR" != "/" ]]; do
    if [[ -d "$CURRENT_DIR/.git" ]]; then
      TARGET_DIR="$CURRENT_DIR"
      break
    fi
    CURRENT_DIR=$(dirname "$CURRENT_DIR")
  done
  [ -z "$TARGET_DIR" ] && TARGET_DIR="$HOME/code"
fi

if [ -d "$TARGET_DIR" ]; then
  open -a Warp "$TARGET_DIR"
  sleep 1.2
  osascript -e 'tell application "System Events" to keystroke "npm start" & return'
  exit 0
else
  echo "❌ 目录不存在"
  exit 1
fi