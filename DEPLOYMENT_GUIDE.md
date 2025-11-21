# 🚀 GitHub 部署指南

## 📋 前置准备

您的本地仓库已经准备好，位于：`/Users/yuchen/project/qimen-tool`

Git 仓库已初始化，并完成首次提交 ✅

## 🔧 部署步骤

### 步骤 1：在 GitHub 上创建新仓库

1. 访问 [https://github.com/new](https://github.com/new)
2. 填写仓库信息：
   - **Repository name**: `qimen-tool`
   - **Description**: `奇门遁甲辅助工具 - 基于民用晨暮光的真太阳时变动时辰计算`
   - **Visibility**: Public（推荐，这样可以使用 GitHub Pages）
   - **不要勾选** "Initialize this repository with a README"（我们已经有了）
3. 点击 "Create repository"

### 步骤 2：推送代码到 GitHub

在终端执行以下命令（已经在 qimen-tool 目录下）：

```bash
# 添加远程仓库
git remote add origin https://github.com/Yuchen-T/qimen-tool.git

# 推送代码到 GitHub
git push -u origin main
```

如果推送失败，可能需要认证，可以使用以下方式之一：

**方式 A：使用 Personal Access Token**
```bash
git push -u origin main
# 输入用户名：Yuchen-T
# 输入密码：[你的 GitHub Personal Access Token]
```

**方式 B：使用 SSH**
```bash
# 先将远程地址改为 SSH
git remote set-url origin git@github.com:Yuchen-T/qimen-tool.git
git push -u origin main
```

### 步骤 3：启用 GitHub Pages

1. 进入仓库页面：`https://github.com/Yuchen-T/qimen-tool`
2. 点击 **Settings**（设置）
3. 在左侧菜单找到 **Pages**
4. 在 "Build and deployment" 部分：
   - **Source**: 选择 "Deploy from a branch"
   - **Branch**: 选择 `main` 分支，目录选择 `/ (root)`
   - 点击 **Save**
5. 等待 1-2 分钟，页面会显示部署链接

### 步骤 4：访问您的网站

部署成功后，您的网站将在以下地址可用：

🔗 **https://yuchen-t.github.io/qimen-tool/**

## 📱 后续更新

当您修改代码后，使用以下命令更新：

```bash
cd /Users/yuchen/project/qimen-tool

# 查看修改
git status

# 添加修改
git add .

# 提交修改
git commit -m "描述你的修改"

# 推送到 GitHub
git push
```

GitHub Pages 会自动重新部署，通常 1-2 分钟后更新生效。

## 🆘 常见问题

### 问题 1：推送时提示需要认证
**解决方案**：创建 Personal Access Token
1. 访问 [https://github.com/settings/tokens](https://github.com/settings/tokens)
2. 点击 "Generate new token (classic)"
3. 勾选 `repo` 权限
4. 生成后复制 token
5. 在推送时使用 token 作为密码

### 问题 2：GitHub Pages 404 错误
**解决方案**：
- 确认 `index.html` 文件在仓库根目录
- 等待 1-2 分钟让部署完成
- 检查 Settings > Pages 中的部署状态

### 问题 3：网站功能不正常
**检查清单**：
- ✅ 所有 CDN 链接（Tailwind、Phosphor Icons、SunCalc）可访问
- ✅ API Key 是否有效
- ✅ 浏览器控制台是否有错误

## 📞 需要帮助？

如果遇到问题，可以：
1. 查看 GitHub Pages 部署日志
2. 检查浏览器控制台错误
3. 确认网络连接正常

---

祝您部署顺利！🎉

