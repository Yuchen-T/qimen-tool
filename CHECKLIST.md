# ✅ 部署清单

## 📦 项目准备状态

### ✅ 已完成
- [x] 文件重命名为 `奇门遁甲辅助工具.html`
- [x] 复制到新项目目录 `qimen-tool/`
- [x] 重命名为 `index.html`（GitHub Pages 默认首页）
- [x] 初始化 Git 仓库
- [x] 创建 `.gitignore` 文件
- [x] 创建 `README.md` 项目说明
- [x] 创建 `DEPLOYMENT_GUIDE.md` 部署指南
- [x] 创建 `deploy.sh` 一键部署脚本
- [x] 创建 `PROJECT_INFO.md` 详细信息
- [x] 完成所有文件的 Git 提交（4 个 commit）
- [x] 配置 Git 远程仓库地址

### ⏳ 待完成（需要您手动操作）

#### 第 1 步：创建 GitHub 仓库 🌟

1. 访问：https://github.com/new
2. 填写信息：
   ```
   Repository name: qimen-tool
   Description: 奇门遁甲辅助工具 - 基于民用晨暮光的真太阳时变动时辰计算
   Visibility: ✅ Public
   不要勾选: □ Add a README file
   不要勾选: □ Add .gitignore
   不要勾选: □ Choose a license
   ```
3. 点击 **"Create repository"** 按钮

#### 第 2 步：推送代码到 GitHub 🚀

打开终端，执行：

```bash
cd /Users/yuchen/project/qimen-tool
git push -u origin main
```

**如果提示需要认证**：
- 用户名输入：`Yuchen-T`
- 密码输入：您的 **GitHub Personal Access Token**

**获取 Token**：
1. 访问：https://github.com/settings/tokens
2. 点击 "Generate new token (classic)"
3. 勾选 `repo` 权限
4. 生成并复制 token
5. 粘贴作为密码使用

#### 第 3 步：启用 GitHub Pages 🌐

1. 进入仓库：https://github.com/Yuchen-T/qimen-tool
2. 点击 **Settings** 标签
3. 左侧菜单找到 **Pages**
4. 在 "Build and deployment" 下：
   - Source: Deploy from a branch
   - Branch: main
   - Folder: / (root)
5. 点击 **Save**
6. 等待 1-2 分钟

#### 第 4 步：访问您的网站 🎉

部署完成后，访问：

**🔗 https://yuchen-t.github.io/qimen-tool/**

---

## 🔄 日常更新流程

修改代码后，在项目目录执行：

```bash
./deploy.sh
```

脚本会自动：
1. 检测更改
2. 提交到 Git
3. 推送到 GitHub
4. GitHub Pages 自动部署

---

## 📊 项目文件清单

```
qimen-tool/
├── 📄 index.html              ✅ 主页面（940 行代码）
├── 📘 README.md               ✅ 项目说明
├── 📗 DEPLOYMENT_GUIDE.md     ✅ 部署指南
├── 📙 PROJECT_INFO.md         ✅ 详细信息
├── 📋 CHECKLIST.md            ✅ 本清单
├── 🚀 deploy.sh               ✅ 部署脚本
├── 📝 .gitignore             ✅ Git 忽略
└── 📁 .git/                   ✅ Git 仓库
```

---

## 🎯 快速命令参考

```bash
# 查看项目状态
cd /Users/yuchen/project/qimen-tool && git status

# 查看远程仓库
git remote -v

# 查看提交历史
git log --oneline

# 一键部署
./deploy.sh

# 手动推送
git push origin main
```

---

## 🆘 遇到问题？

### 推送失败
- 检查网络连接
- 确认 GitHub 仓库已创建
- 验证 Token 是否有效

### Pages 404
- 等待 1-2 分钟让部署完成
- 确认文件名为 `index.html`
- 检查 Settings > Pages 状态

### 功能异常
- 按 F12 查看浏览器控制台
- 检查 API Key 是否有效
- 确认网络可访问 CDN

---

**准备完成！现在您可以按照上面的步骤完成 GitHub 部署了！** 🚀

有问题随时问我！😊

