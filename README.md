# 🎥 PipCast

> **Free-shape floating webcam bubble meets frictionless in-browser screen recorder.**  
> An open-source, zero-install, 100% offline alternative to Loom. Record your screen, your floating facecam, and crystal-clear audio with a single click.

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Zero Dependency](https://img.shields.io/badge/Dependencies-Zero-emerald.svg)](#)
[![100% Offline](https://img.shields.io/badge/Privacy-100%25%20Local-purple.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-macOS%20%7C%20Windows%20%7C%20Linux-orange.svg)](#)
[![Language](https://img.shields.io/badge/Language-中文%20%7C%20English-cyan.svg)](README_CN.md)

[🇨🇳 简体中文文档](README_CN.md) | **English Documentation**

---

## 💡 Why PipCast?

Recording presentations, tutorials, bug walk-throughs, and demos shouldn't require bloated software, subscription fees, or cloud privacy risks:

| Dimension | ☁️ Loom / Cloud Apps | 🎙️ OBS Studio | 🍏 QuickTime / Native | ⚡ **PipCast** |
| :--- | :--- | :--- | :--- | :--- |
| **Camera Shapes** | Rigid circle or square | Complex manual alpha masks | Rigid rectangular window | **Circle, Squircle, Rounded, Hexagon, Oval** |
| **Installation** | Heavy extension or app | Multi-GB install & complex scene setup | Preinstalled, but no webcam compositing | **0 Install: Pure single-file browser app** |
| **Cost & Limits** | 5-minute cap, $12.50/mo subscription | Free & Open Source | Free | **100% Free & Open Source, Unlimited duration** |
| **Privacy & Security** | Uploads raw video to third-party cloud | 100% Local | 100% Local | **100% In-Browser & Local-First (0 data leaks)** |
| **Audio Capture** | Often requires audio extension drivers | Requires virtual audio cables | Can't mix tab audio easily | **Automatic Web Audio Mixer (Mic + System/Tab)** |
| **Speed to Record** | 20–40 seconds loading | 1–3 minutes setup | 30 seconds | **⚡ Ready in 2 seconds** |

---

## ✨ Features

### 🔮 1. Free-Shape Floating Webcam
- **5 Aesthetic Shapes**: Switch between **Circle**, **Apple Squircle (28% superellipse)**, **Rounded Rectangle**, **Cyber Hexagon**, and **Wide Oval**.
- **Free Drag & Drop**: Move your camera bubble anywhere on the screen with real-time boundary clamping.
- **Scroll-to-Resize**: Hover over the bubble and scroll your mouse wheel to fluidly scale from 100px to 360px.
- **Continuity Camera & Multi-Device Support**: Works out of the box with built-in webcams, USB devices, and wireless **iPhone Continuity Camera**.
- **Hardware-Aware Fallback**: Graceful handling for macOS clamshell mode (when laptop lid is closed) and app exclusive locks (QuickTime / Zoom).
- **Horizontal Mirroring**: Flip camera view with one click (`🪞`).
- **Glow Borders**: Cyberpunk Neon Blue, Regal Purple, Emerald Stealth, or Borderless.

### 🔴 2. Frictionless Screen & Audio Recording
- **Zero Infinite Loops**: Safe, non-blocking screen picker state machine.
- **3 Recording Modes**:
  1. 🖥️ + 📷 **Screen + FaceCam**: Slides / code walkthrough with floating facecam.
  2. 📹 **Camera Memo Only**: Full webcam recording without sharing screen.
  3. 💻 **Screen Only**: Crisp screen recording with voiceover.
- **3-Second Visual Countdown**: Breathe, switch windows, and start smoothly (with instant Skip button).
- **Live Audio Level Meter**: Dual-track Web Audio API mixing (Mic + System/Tab) with real-time jumping green LED visualizer.
- **Real-Time 60 FPS Compositor**: Hardware-accelerated `<canvas>` compositor combines screen video, shaped camera mask, and borders into a high-bitrate stream.
- **Instant Export**: Instant in-page video playback preview + 1-click download as **MP4 / WebM**.

### 🎬 3. Broadcast Clean View (`H` Key)
- Press **`H`** at any moment to hide all docks, toolbars, and header menus, leaving only your presentation content and floating facecam.

---

## ⌨️ Keyboard Shortcuts

| Shortcut | Action | Description |
| :---: | :--- | :--- |
| **`H`** | **Toggle Clean View** | Hide or restore all UI toolbars and docks |
| **`S`** | **Cycle Camera Shape** | Circle $\rightarrow$ Squircle $\rightarrow$ Rounded $\rightarrow$ Hexagon $\rightarrow$ Oval |
| **`C`** | **Toggle Camera** | Turn floating facecam ON or OFF |
| **`M`** | **Toggle Microphone** | Mute or unmute mic voiceover |
| **Mouse Wheel** | **Resize Bubble** | Hover over the camera bubble and scroll to scale |

---

## 🚀 Quick Start

PipCast has **zero build steps, zero node_modules, and zero dependencies**.

### Option 1: Double-Click Launcher (Recommended for macOS)
Double-click **`start.command`** in the project root.
- Starts a zero-overhead local studio server on `http://localhost:8000`.
- Grants 100% full macOS hardware camera and screen capture entitlements.

### Option 2: Command Line (macOS / Linux / Windows)
```bash
# macOS & Linux
./scripts/start.sh

# Windows
.\scripts\start.bat

# Or using Node / Python directly
python3 -m http.server 8000
# or: npx serve .
```

### Option 3: Direct Browser File
Double-click **`index.html`** to open directly in Chrome, Edge, or Safari.

---

## 📁 Repository Structure

```
pipcast/
├── index.html              # Standalone, zero-dependency core application
├── start.command           # 1-click launcher for macOS
├── package.json            # Standard open-source metadata & npm scripts
├── LICENSE                 # MIT License
├── README.md               # English Documentation
├── README_CN.md            # Chinese Documentation
├── scripts/
│   ├── start.sh            # Linux / macOS shell launcher
│   ├── start.bat           # Windows launcher
│   └── diagnostics.html    # Raw WebRTC hardware diagnostic utility
└── docs/
    ├── HARDWARE_GUIDE.md   # Continuity Camera & Clamshell mode technical guide
    └── TROUBLESHOOTING.md  # Permissions, Audio mixing & TCC error resolution
```

---

## 🔒 Privacy & Local-First Philosophy

PipCast is built on a **100% local-first principle**:
- **0 Bytes Transferred**: All video compositing, canvas clipping, and audio mixing happen inside your browser's V8 / WebAssembly engine.
- **No Analytics / Telemetry**: No third-party trackers, cookies, or remote scripts.
- **Air-Gapped Ready**: You can unplug your Wi-Fi, run PipCast, and record offline with complete functionality.

---

## 📄 License

MIT License © 2026 PipCast Contributors. Free to use, modify, and distribute.
