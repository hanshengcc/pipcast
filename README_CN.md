# 🎥 PipCast (中文文档)

> **自由形状悬浮镜头 × 极简免安装 60 FPS 网页录屏神器。**  
> **100% 真正跨平台 (macOS · Windows · Linux · ChromeOS)** · 一款开源、零依赖、100% 纯本地离线隐私的轻量级 Loom 替代方案。一键录制超清屏幕、异形人脸镜头气泡、无损麦克风与系统原声。

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Zero Dependency](https://img.shields.io/badge/Dependencies-Zero-emerald.svg)](#)
[![100% Offline](https://img.shields.io/badge/Privacy-100%25%20Local-purple.svg)](#)
[![Performance](https://img.shields.io/badge/Render-60%20FPS%20双引擎-cyan.svg)](#)
[![Resolution](https://img.shields.io/badge/Quality-1080P%20%7C%202K%2060FPS-rose.svg)](#)
[![Cross Platform](https://img.shields.io/badge/Platform-macOS%20%7C%20Windows%20%7C%20Linux%20%7C%20ChromeOS-orange.svg)](#)
[![Browsers](https://img.shields.io/badge/Browsers-Chrome%20%7C%20Edge%20%7C%20Brave%20%7C%20Safari-green.svg)](#)
[![Language](https://img.shields.io/badge/Language-中文%20%7C%20English-blueviolet.svg)](README.md)

[English Documentation](README.md) | **🇨🇳 简体中文文档**

---

![PipCast 界面全景概览](docs/hero_preview.png)

---

## 💡 为什么选择 PipCast？

无论您是制作求职/作业演讲视频（如 Pecha Kucha 20×20）、软件教程，还是工程师录制代码走查与架构演示，市面上的传统工具往往带来沉重的心智与隐私负担：

| 评估维度 | ☁️ Loom 等商业云录屏 | 🎙️ OBS Studio | 🍏 系统自带 (QuickTime等) | ⚡ **PipCast** |
| :--- | :--- | :--- | :--- | :--- |
| **跨平台通用性** | 依赖扩展/专用客户端 | 原生客户端需多端编译 | 仅限 macOS 系统自带 | **🌐 100% 真正全平台：macOS / Windows / Linux / ChromeOS** |
| **镜头气泡形状** | 仅生硬圆形/方块 | 需繁琐配置透明通道与遮罩 | 带有标题栏与边框的普通窗口 | **圆形、苹果超椭圆 (28%)、圆角、六边形、椭圆** |
| **安装与体积** | 需安装大型客户端或插件 | 几百 MB 到数 GB 安装包，参数繁杂 | 自带，但无法将人像与屏幕合成一体 | **0 安装：单文件 HTML，即开即用** |
| **后台切标签页录制** | 浏览器插件常因后台休眠掉帧 | 纯后台软件 | 无合成功能 | **⚡ 双引擎 Worker 永续保活：实打实稳 60 FPS** |
| **收费与录制时长** | 免费版限 5 分钟，需按月订阅 | 免费开源 | 免费 | **100% 免费开源，无录制时长与次数限制** |
| **隐私与数据安全** | 视频原画强制上传第三方服务器 | 纯本地 | 纯本地 | **100% 纯本地浏览器沙箱合成（零数据外泄）** |
| **音频混音** | 常需额外安装虚拟音频驱动扩展 | 需配置专业混音音轨与降噪插件 | 无法便捷录制标签页内声音与麦克风 | **原生 Web Audio 实时自动混音与动态跳变电平表** |
| **控制栏与区域裁剪** | 固定浮窗 | 手动配置捕获坐标 | 静态方框 | **四向磁吸吸附 Dock + 8 方向手柄自由裁剪框** |
| **上手耗时** | 注册登录，20–40 秒等待 | 学习曲线陡峭，需 3–5 分钟调试 | 30 秒 | **⚡ 双击即开，2 秒进入录制状态** |

---

## 📸 最新特性实机截图

### 🔴 60 FPS 超清录制中（极客演示与实时音频律动）
60 FPS 双引擎离屏合成、异形悬浮镜头气泡、动态跳动的音频分贝柱、呼吸发光的录制状态胶囊与精准时间码：
![PipCast 录制状态实机演示](docs/recording_active.png)

<br/>

### 🎬 录制画质多档切换（1080P 60FPS / 720P 30FPS / 2K 60FPS）
右键点击 Dock 录制按钮，随时切换录制码率与分辨率：
![PipCast 画质切换菜单](docs/quality_menu.png)

<br/>

### ✂️ 交互式区域与标签页裁剪框选（快捷键 `R`）
按下 `R` 键呼出 8 向拖拽控制手柄，支持实时像素尺寸标注、一键去除浏览器标签顶栏、锁定 16:9 黄金比例：
![PipCast 区域框选裁剪](docs/crop_capture.png)

<br/>

### 🎛️ 摄像头与麦克风多硬件无缝热切换
右键点击镜头或麦克风图标，自由切换 FaceTime 镜头、Studio Display、USB 专业麦克风以及 **iPhone 连续互通超清相机**：
![PipCast 硬件设备选择器](docs/device_menu.png)

---

## ✨ 核心特性详解

### 🔮 1. 自由异形悬浮人像气泡 (Free-Shape Facecam)
- **5 种几何美学形状**：在**圆形**、**苹果超椭圆 (28% Squircle)**、**微圆角矩形**、**赛博六边形**与**横向胶囊椭圆**之间任意一键切换（快捷键 `S`）。
- **全局自由拖拽与边缘贴靠**：带有安全视口限制，可将镜头气泡随意拖拽至屏幕任意角落。
- **滚轮与对角手柄连续缩放**：鼠标悬停在气泡上滑动滚轮，或按住对角控制手柄拖拽，即可在 100px 到 360px 之间顺滑缩放。
- **苹果连续互通相机 (Continuity Camera)**：无缝支持 MacBook 内置镜头、外接 USB 摄像头，以及将 iPhone 作为 4K 无线网络摄像头使用。
- **硬件异常自动容灾**：自动识别并友好提示 MacBook 合盖断电休眠、QuickTime/Zoom 独占设备锁等硬件异常。
- **水平镜像翻转**：一键开启/关闭镜头镜像 (`🪞`)。
- **多色赛博发光边框**：霓虹蓝、赛博紫、翡翠绿与极简无边框。

### ⚡ 2. 60 FPS 双引擎抗休眠渲染架构 (解决后台标签页卡帧)
- **业界痛点**：当您切到其他浏览器标签页或全屏软件进行代码走查/PPT演讲时，Chrome 内核的主动节电机制会将后台标签页的 `requestAnimationFrame` 压制至 0 FPS，导致录下的视频变成只有声音的“幻灯片静态截图”。
- **PipCast 创新解法**：构建了“**Web Worker 独立高精定时器 (16.6ms / 60 FPS) + Web Audio 次声波永续保活振荡器 (`gain: 0.00001`)**”的双引擎架构。后台标签页被 Chrome 内核豁免休眠机制，即使完全切到后台或最小化，录制帧率依然稳定锁死在 60 FPS！

### 🌐 3. 真正的 100% 跨平台与硬件无关架构 (Cross-Platform)
- **纯正 Web 标准驱动**：完全基于 W3C 标准 Web API（`getDisplayMedia`、`getUserMedia`、`<canvas>`、Web Audio API、Web Worker、MediaRecorder），**无需安装任何操作系统级二进制包、驱动程序或内核扩展**。
- **🍏 macOS**：完美支持 Apple Silicon (M1/M2/M3/M4) 与 Intel 架构、FaceTime HD 高清摄像头、外接 Studio Display 甚至无线将 **iPhone 作为连续互通超清相机**。
- **🪟 Windows (10 / 11)**：原生支持 DirectShow 摄像头、WASAPI 高保真混音、高分屏 DPI 自适应缩放与多屏幕选择，提供一键直启批处理脚本 `scripts\start.bat`。
- **🐧 Linux (Ubuntu / Fedora / Arch / Debian 等)**：通过系统级桌面门户（Desktop Portal）原生支持 Wayland 与 X11 屏幕及音频捕获（PipeWire / PulseAudio），V4L2 摄像头即插即用，提供 `scripts/start.sh`。
- **💻 ChromeOS / 轻薄本**：超低 CPU 占用与内存占用，Chromebook 与低功耗笔记本也能从容稳定录制 60 FPS。

### 🧲 4. 四向边缘智能磁吸 Dock
- **磁吸停靠光晕**：拖拽浮动录制 Dock 靠近屏幕左、右、上、下边缘时，自动触发平滑磁吸动画并绽放柔和吸附光晕。
- **自适应横竖排版**：吸附至左右侧边缘时呈现经典竖排胶囊，吸附至上下侧边缘时自动平滑转为横向紧凑布局。

### 🎬 5. 录制画质与码率档位
- **1080P 超清 (默认推荐)**：1920×1080 · 60 FPS · 8 Mbps（代码走查、PPT 演讲的最佳平衡点）。
- **720P 流畅**：1280×720 · 30 FPS · 3 Mbps（极致精简，极速导出，文件体积微小）。
- **2K 原画**：2560×1440 · 60 FPS · 16 Mbps（针对高分 Retina 视网膜屏幕的极致像素级呈现）。

### ✂️ 6. 交互式区域框选与去标签栏裁剪 (`R` 键)
- **8 触点自由拖拽框**：拖拽四周手柄即可任意指定屏幕或窗口的捕获区域。
- **一键去顶栏**：点击预设按钮，自动去除浏览器上方的标签栏与 URL 地址栏，画面纯净专业。
- **16:9 标准比例锁定**：一键适配视频网站与横屏展示比例。

### 🎙️ 7. 实时音波律动电平表与混音
- **实时音频反馈**：集成 Web Audio API 频谱分析仪，拾音时 3 根分贝柱随语调起伏实时跳跃，杜绝“录了半小时才发现麦克风静音”的翻车惨剧。
- **音视频多轨自动混合**：一键将麦克风人声画外音与电脑系统声音/标签页媒体原声混合为单条高保真音轨。

### 🎬 8. 纯净录制沉浸模式 (`H` 键)
- 演讲或录制时随时按下 **`H`** 键，即可瞬间隐去所有控制按钮、顶栏与 Dock，只留下纯净的演讲屏幕与您的悬浮异形镜头。

---

## 🌐 操作系统与主流浏览器兼容性矩阵

| 浏览器内核 | Windows 10 / 11 | macOS (Intel / M 系列) | Linux (X11 / Wayland) | ChromeOS |
| :--- | :---: | :---: | :---: | :---: |
| **Google Chrome** | ✅ 60 FPS 全功能支持 | ✅ 60 FPS 全功能支持 | ✅ 60 FPS 全功能支持 | ✅ 60 FPS 全功能支持 |
| **Microsoft Edge** | ✅ 60 FPS 全功能支持 | ✅ 60 FPS 全功能支持 | ✅ 60 FPS 全功能支持 | — |
| **Brave / Vivaldi / Opera** | ✅ 全功能完美运行 | ✅ 全功能完美运行 | ✅ 全功能完美运行 | — |
| **Apple Safari** | — | ✅ 支持 (16.4+) | — | — |
| **Mozilla Firefox** | ✅ 支持基础屏幕录制 | ✅ 支持基础屏幕录制 | ✅ 支持基础屏幕录制 | — |

---

## ⌨️ 常用快捷键一览表

| 快捷键 | 功能 | 说明 |
| :---: | :--- | :--- |
| **`空格 (Space)`** | **开始 / 停止录制** | 一键触发 3 秒倒计时，录制中按空格立即停止并生成预览 |
| **`R`** | **区域裁剪框选** | 开启 / 关闭交互式自由裁剪框，支持 8 触点拖拽与预设 |
| **`H`** | **沉浸广播模式** | 隐藏 / 显示所有 Dock 工具栏与辅助菜单 |
| **`S`** | **轮换镜头形状** | 圆形 $\rightarrow$ 苹果超椭圆 $\rightarrow$ 微圆角 $\rightarrow$ 六边形 $\rightarrow$ 胶囊椭圆 |
| **`C`** | **开关悬浮镜头** | 开启或关闭人像气泡（**右键换摄像头设备**） |
| **`M`** | **开关麦克风** | 静音或开启画外音收音（**右键换麦克风设备**） |
| **`Esc`** | **取消与退出** | 取消录制倒计时、退出裁剪模式、关闭预览弹窗 |
| **鼠标滚轮 / 拖拽手柄** | **缩放镜头尺寸** | 悬停在气泡上滑动滚轮，或拖拽对角手柄自由缩放 |

---

## 🚀 各操作系统极速启动指南

PipCast **无任何构建步骤、无 node_modules、无外部依赖**。

### 🍏 macOS 用户（Intel 与 Apple Silicon）
直接双击项目根目录下的 **`start.command`**。
- 以微秒级启动零开销本地服务 `http://localhost:8000` 并在 Chrome 中自动打开。
- Chrome 对 `localhost` 赋予 100% 完整的系统硬件权限与持久化存储支持。

### 🪟 Windows 用户（Windows 10 / 11）
直接双击运行 **`scripts\start.bat`**（或在 CMD / PowerShell 中执行）。
- 脚本会自动检测 Python 或 Node，并在默认浏览器中调起工作室。

### 🐧 Linux 用户（Ubuntu / Fedora / Arch / Debian 等）
在终端中赋予执行权限并运行：
```bash
chmod +x ./scripts/start.sh
./scripts/start.sh
```

### 🌐 跨平台命令行通用启动
```bash
# 使用 Python 3
python3 -m http.server 8000

# 或使用 Node.js
npx serve -l 8000 .
```

### 📂 直接双击文件打开
直接用 Chrome、Edge 或 Safari 双击打开 **`index.html`**。  
*(说明：Chromium 安全规范禁止 `file://` 静态文件唤醒麦克风，如需使用画外音录制，推荐使用上述对应系统的启动脚本或 localhost 启动)*。

---

## 📁 项目目录结构

```
pipcast/
├── index.html              # 核心单文件应用源码（零依赖，纯原生 Web 技术栈）
├── start.command           # macOS 桌面一键直启脚本
├── package.json            # 开源元数据与常用启动脚本规范
├── LICENSE                 # MIT 开源许可证
├── README.md               # 英文官方文档
├── README_CN.md            # 中文官方文档
├── scripts/
│   ├── start.sh            # Linux / macOS Shell 启动脚本
│   ├── start.bat           # Windows 批处理启动脚本
│   └── diagnostics.html    # WebRTC 硬件底层诊断辅助工具
└── docs/
    ├── hero_preview.png    # 高清 Studio 界面全景截图
    ├── recording_active.png# 60 FPS 录制中实机演示截图
    ├── quality_menu.png    # 画质切换菜单截图
    ├── crop_capture.png    # 区域与标签页裁剪框截图
    ├── device_menu.png     # 硬件设备切换器截图
    ├── HARDWARE_GUIDE.md   # 连续互通相机与合盖休眠深度技术手册
    └── TROUBLESHOOTING.md  # 权限配置、混音故障与 TCC 排查指南
```

---

## 🔒 隐私与本地优先承诺

PipCast 遵循 **100% Local-First (本地优先)** 原则：
- **0 字节云端上传**：所有视频剪裁、60 FPS 双引擎画面合成与音频混音均在浏览器原生引擎内完成。
- **无追踪、无打点**：绝不包含任何第三方追踪代码、数据收集 SDK、Cookie 或远程依赖。
- **支持完全断网运行**：即使在完全断开互联网的离线飞机舱内，PipCast 也能流畅录制并导出超清视频。

---

## 📄 开源许可证

本项目采用 [MIT License](LICENSE) 开源。任何人均可自由商用、修改与二次分发。
