#!/bin/bash

# 奇门遁甲工具 - 一键自动部署脚本
# 完全自动化：自动检测、提交、推送

echo "🚀 开始自动部署到 GitHub..."
echo ""

# 切换到项目目录
cd /Users/yuchen/project/qimen-tool || exit 1

# 检查 Git 状态
if [[ -n $(git status -s) ]]; then
    echo "📝 发现未提交的更改："
    git status -s
    echo ""
    
    # 添加所有更改（包括删除的文件）
    git add -A .
    
    # 自动生成提交信息（包含更改的文件列表）
    changed_files=$(git diff --cached --name-only | head -3 | tr '\n' ' ')
    commit_msg="🔄 自动更新: $(date '+%Y-%m-%d %H:%M:%S')"
    if [[ -n "$changed_files" ]]; then
        commit_msg="${commit_msg} - ${changed_files}"
    fi
    
    # 自动提交（不打开编辑器）
    git commit -m "$commit_msg" --no-edit
    
    if [ $? -eq 0 ]; then
        echo "✅ 自动提交成功: $commit_msg"
        echo ""
    else
        echo "❌ 提交失败"
        exit 1
    fi
else
    echo "✅ 没有需要提交的更改"
    echo ""
fi

# 推送到 GitHub（静默模式，不显示进度）
echo "📤 推送到 GitHub..."
GIT_TERMINAL_PROMPT=0 git push origin main 2>&1

if [ $? -eq 0 ]; then
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo ""
    echo "🎉 部署成功！"
    echo ""
    echo "⏱️  GitHub Pages 将在 1-2 分钟后自动更新"
    echo ""
    echo "🌐 访问地址："
    echo "   https://yuchen-t.github.io/qimen-tool/"
    echo ""
    echo "💡 提示：如果页面没有更新，请清除浏览器缓存"
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
else
    echo ""
    echo "❌ 推送失败"
    echo ""
    echo "💡 解决方法："
    echo "   1. 检查网络连接"
    echo "   2. 确认 GitHub 认证配置"
    echo "   3. 如需使用 Token，运行: ./push-with-token.sh YOUR_TOKEN"
    echo ""
    exit 1
fi
