#!/bin/bash
# 一鍵更新 GitHub Pages
# 使用方式：./deploy.sh
# 前提：已在這個資料夾執行過 git init 並設定好 remote origin

set -e

echo "拉取其他裝置的更新..."
git pull

echo "更新中..."
git add .
git commit -m "update $(date '+%Y-%m-%d %H:%M')" || echo "沒有變更，略過 commit"
git push

echo "完成！約 1-2 分鐘後可在 GitHub Pages 網址看到更新。"
