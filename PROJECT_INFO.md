# 项目信息

## 📁 项目结构

```
qimen-tool/
├── index.html              # 主页面（奇门遁甲辅助工具）
├── README.md               # 项目说明文档
├── DEPLOYMENT_GUIDE.md     # 部署指南
├── deploy.sh               # 一键部署脚本
├── .gitignore             # Git 忽略文件
└── .git/                  # Git 仓库
```

## 🔗 重要链接

- **GitHub 仓库**: https://github.com/Yuchen-T/qimen-tool
- **在线访问**: https://yuchen-t.github.io/qimen-tool/
- **本地目录**: /Users/yuchen/project/qimen-tool

## 📊 项目统计

- **主要文件**: 1 个 HTML 文件（index.html）
- **代码行数**: ~940 行
- **使用技术**: 
  - HTML5
  - Tailwind CSS 3.x
  - Vanilla JavaScript
  - Phosphor Icons
  - SunCalc.js

## 🎯 核心功能

### 1. 变动时辰计算器
- 输入：地点（省/市）、日期、查询时间
- 输出：所属时辰、时辰区间、完整时辰表
- 原理：昼七夜五规则 + 民用晨暮光数据

### 2. 奇仪排盘查询
- 反查甲位：已知用神 → 查甲位
- 正查用神：已知甲位 → 查用神
- 数据：内置完整奇门遁甲对应关系

### 3. UI/UX 特性
- 亮色/暗色主题切换（右上角按钮）
- 响应式设计（支持手机/平板/电脑）
- 玻璃拟态风格
- 流畅动画效果

## 🔧 技术细节

### API 依赖
1. **ipgeolocation.io** - 天文数据
   - 用途：获取民用晨暮光时间
   - 配额：1000 次/天（免费版）
   
2. **Open-Meteo** - 地理编码
   - 用途：城市名 → 经纬度
   - 免费无限制

3. **OpenStreetMap Nominatim** - 备用地理编码
   - 用途：Open-Meteo 失败时的后备方案

### CDN 资源
- Tailwind CSS: https://cdn.tailwindcss.com
- Phosphor Icons: https://unpkg.com/@phosphor-icons/web
- SunCalc: https://cdnjs.cloudflare.com/ajax/libs/suncalc/1.9.0/suncalc.min.js
- 中国省市数据: https://unpkg.com/china-division/dist/pcas-code.json

## 📝 维护记录

### 2024-11-22
- ✅ 初始化项目
- ✅ 完成核心功能开发
- ✅ UI/UX 全面优化
- ✅ 添加主题切换功能
- ✅ 准备 GitHub 部署

## 🔄 快速命令

```bash
# 进入项目目录
cd /Users/yuchen/project/qimen-tool

# 查看状态
git status

# 一键部署
./deploy.sh

# 查看提交历史
git log --oneline

# 本地预览（需要 HTTP 服务器）
python3 -m http.server 8000
# 然后访问 http://localhost:8000
```

## 🎨 自定义修改

### 修改 API Key
如果需要更换 ipgeolocation.io 的 API Key：
1. 打开 `index.html`
2. 找到第 307 行：`const API_KEY = "...";`
3. 替换为新的 API Key
4. 保存并运行 `./deploy.sh` 部署

### 修改主题颜色
主要颜色定义在 Tailwind 配置中（第 52-66 行）：
```javascript
colors: {
    brand: {
        50: '#eff6ff',
        500: '#3b82f6',  // 主色调
        ...
    }
}
```

### 添加新城市数据
城市数据来自 `china-division` 库，自动加载无需手动维护。

## 🆘 故障排查

### 问题：天文数据获取失败
- 检查 API Key 是否有效
- 检查是否超出 API 配额
- 检查网络连接

### 问题：地点定位失败
- 自动降级到 OSM Nominatim
- 可手动输入经纬度

### 问题：页面样式异常
- 检查 Tailwind CDN 是否可访问
- 清除浏览器缓存
- 检查浏览器控制台错误

---

**最后更新**: 2024-11-22  
**版本**: 1.0.0  
**作者**: Yuchen-T

