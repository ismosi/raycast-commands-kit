#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title focus mode
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖
# @raycast.packageName 猪猪之家终端

# Documentation:
# @raycast.description 专注模式
# @raycast.author ismosi

set +e

# 1. 系统音量归零（保留通知横幅）
osascript -e "set volume output volume 0" 2>/dev/null

# 2. 强制退出微信（如果正在运行）
killall WeChat 2>/dev/null

# 3. 强制退出QQ（如果正在运行）
killall QQ 2>/dev/null

# ==== 数字工作台搭建 ====

# 先切换到桌面1（确保应用在正确的桌面打开）
osascript -e 'tell application "System Events" to key code 18 using {control down}'
sleep 1

# 4. 先打开 Obsidian（让它自然退到后台）
open -a Obsidian

# 5. 再打开 Trae（最后打开，自然获得焦点）
open -a "Trae CN"

# 6. 等待 Trae 启动，然后激活并全屏
sleep 3
osascript -e 'tell application "Trae CN" to activate'
osascript -e 'tell application "System Events" to key code 36 using {control down, option down}'

# 7. 切换深色模式
osascript -e 'tell app "System Events" to tell appearance preferences to set dark mode to true'

# 8. 启动60分钟番茄钟
open "raycast://extensions/ThatNerd/timers/start60MinuteTimer"

echo "🎯 专注模式已开启"
exit 0
EOF