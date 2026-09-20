# 🔧 PipCast Troubleshooting Guide (故障排查指南)

Here are the most common issues encountered during browser-based screen and webcam recording, along with instant resolutions.

---

## 🖥️ 1. Screen Recording Permission Denied / Infinite Loop

### Symptom:
Clicking "Select Screen" prompts for permission, or macOS displays *"Google Chrome needs screen recording permission"*, or closing the system prompt causes infinite loops.

### Cause:
macOS requires system-level authorization for screen recording under **Privacy & Security**.

### Resolution:
1. Open macOS **System Settings** (系统设置) $\rightarrow$ **Privacy & Security** (隐私与安全性) $\rightarrow$ **Screen Recording** (屏幕录制).
2. Ensure **Google Chrome** is toggled **ON** (允许).
3. **CRITICAL**: If you just toggled it ON, macOS requires you to **completely quit and relaunch Google Chrome** (`Cmd + Q`). Simply refreshing the tab will not apply the new security entitlement!
4. **Command-Line Reset (if stuck)**:
   ```bash
   tccutil reset ScreenCapture com.google.Chrome
   ```
   Then relaunch Chrome and re-authorize.

---

## 🎤 2. Microphone & Audio Issues

### Symptom:
Video is recorded, but there is no sound or microphone voiceover.

### Cause:
- Browser microphone permission is blocked or muted.
- Wrong default microphone input selected in macOS.

### Resolution:
1. Click the **🔒 (Tune / Lock)** icon on the left side of the Chrome address bar.
2. Check that **Microphone** is set to **Allow** (允许).
3. Watch the **Audio Level Meter** on PipCast's bottom dock. If the green/cyan bar bounces when you talk, audio is successfully streaming into the Web Audio mixer.
4. If you want tab/system audio included: when the screen picker dialog appears, remember to check the **"Also share tab audio"** checkbox in Chrome.

---

## 🌐 3. `file:///` vs `http://localhost:8000`

### Symptom:
Chrome prevents saving device preferences, or blocks certain WebRTC constraints when opening `index.html` via double-click (`file://`).

### Why:
Chrome treats `file:///` URLs with restricted sandbox security. `http://localhost:8000`, however, is formally treated by Google Chrome and W3C as a **Potentially Trustworthy Origin / Secure Context**, granting permanent permission storage and unrestricted hardware capabilities.

### Resolution:
Run `./start.command` on Mac or `./scripts/start.sh` on Linux. It spins up a zero-overhead local HTTP server and opens Chrome automatically.
