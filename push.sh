#!/bin/bash

# GitHub 推送脚本
# 需要输入您的 GitHub Personal Access Token

echo "🚀 准备推送到 GitHub..."
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "📝 如果您还没有 Personal Access Token，请先创建："
echo "   1. 访问：https://github.com/settings/tokens"
echo "   2. 点击 'Generate new token (classic)'"
echo "   3. 勾选 'repo' 权限"
echo "   4. 生成并复制 token"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# 检查当前目录
if [ ! -d ".git" ]; then
    echo "❌ 错误：当前不在 Git 仓库目录中"
    echo "请先执行：cd /Users/yuchen/project/qimen-tool"
    exit 1
fi

# 显示远程仓库信息
echo "📦 远程仓库："
git remote -v
echo ""

# 推送
echo "🔄 开始推送..."
echo ""
git push -u origin main

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
    echo "   1. 进入仓库页面"
    echo "   2. 点击 Settings > Pages"
    echo "   3. Source 选择：Deploy from a branch"
    echo "   4. Branch 选择：main + / (root)"
    echo "   5. 点击 Save"
    echo ""
    echo "🎉 完成后，您的网站将在以下地址可用："
    echo "   https://yuchen-t.github.io/qimen-tool/"
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
else
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo ""
    echo "❌ 推送失败"
    echo ""
    echo "💡 常见解决方法："
    echo ""
    echo "1️⃣  如果提示认证失败："
    echo "   • 用户名输入：Yuchen-T"
    echo "   • 密码输入：您的 Personal Access Token（不是 GitHub 密码）"
    echo ""
    echo "2️⃣  使用 SSH 方式（推荐）："
    echo "   git remote set-url origin git@github.com:Yuchen-T/qimen-tool.git"
    echo "   git push -u origin main"
    echo ""
    echo "3️⃣  使用 GitHub CLI："
    echo "   gh auth login"
    echo "   git push -u origin main"
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
fi

