#!/bin/bash

# 奇门遁甲工具 - 快速部署脚本

echo "🚀 开始部署到 GitHub..."
echo ""

# 检查是否有未提交的更改
if [[ -n $(git status -s) ]]; then
    echo "📝 发现未提交的更改，准备提交..."
    git add .
    
    # 提示用户输入提交信息
    echo "请输入提交信息（直接回车使用默认信息）:"
    read commit_msg
    
    if [[ -z "$commit_msg" ]]; then
        commit_msg="🔄 更新项目 $(date '+%Y-%m-%d %H:%M:%S')"
    fi
    
    git commit -m "$commit_msg"
    echo "✅ 提交完成"
    echo ""
else
    echo "✅ 没有需要提交的更改"
    echo ""
fi

# 推送到 GitHub
echo "📤 推送到 GitHub..."
git push origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "🎉 部署成功！"
    echo ""
    echo "🌐 您的网站将在 1-2 分钟后更新："
    echo "   https://yuchen-t.github.io/qimen-tool/"
    echo ""
else
    echo ""
    echo "❌ 推送失败，请检查："
    echo "   1. GitHub 仓库是否已创建"
    echo "   2. 是否有网络连接"
    echo "   3. 是否已配置 Git 认证"
    echo ""
    echo "💡 如需帮助，请查看 DEPLOYMENT_GUIDE.md"
fi

