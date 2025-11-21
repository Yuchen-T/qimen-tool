#!/bin/bash

# 带 Token 的推送脚本
# 使用方法：./push-with-token.sh YOUR_TOKEN

echo "🚀 推送到 GitHub..."
echo ""

# 检查是否提供了 Token
if [ -z "$1" ]; then
    echo "❌ 错误：请提供 GitHub Personal Access Token"
    echo ""
    echo "使用方法："
    echo "  ./push-with-token.sh YOUR_TOKEN"
    echo ""
    echo "示例："
    echo "  ./push-with-token.sh ghp_xxxxxxxxxxxxxxxxxxxx"
    echo ""
    exit 1
fi

TOKEN=$1

echo "📦 正在推送到 GitHub..."
echo ""

# 推送到 GitHub
git push https://Yuchen-T:${TOKEN}@github.com/Yuchen-T/qimen-tool.git main

if [ $? -eq 0 ]; then
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo ""
    echo "✅ 推送成功！"
    echo ""
    echo "🌐 仓库地址："
    echo "   https://github.com/Yuchen-T/qimen-tool"
    echo ""
    echo "📝 下一步：启用 GitHub Pages"
    echo ""
    echo "   1. 访问：https://github.com/Yuchen-T/qimen-tool/settings/pages"
    echo "   2. Source 选择：Deploy from a branch"
    echo "   3. Branch 选择：main + / (root)"
    echo "   4. 点击 Save"
    echo ""
    echo "🎉 网站将在以下地址可用："
    echo "   https://yuchen-t.github.io/qimen-tool/"
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo ""
else
    echo ""
    echo "❌ 推送失败，请检查："
    echo "   1. Token 是否正确"
    echo "   2. Token 是否有 repo 权限"
    echo "   3. 网络连接是否正常"
    echo ""
fi

