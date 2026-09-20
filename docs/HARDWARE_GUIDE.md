# 📷 Hardware & Continuity Camera Guide (硬件与连续互通指南)

This guide documents known hardware behaviors and constraints when capturing webcam video and audio on macOS and modern operating systems.

---

## 🍎 1. Apple Continuity Camera (iPhone 连续互通相机)

macOS Ventura (13.0+) and iOS 16+ allow using your iPhone as a wireless, ultra-high-quality studio webcam. However, Apple enforces strict system conditions before macOS exposes the camera stream:

### ⚠️ Strict Pre-requisites (必须全部满足):
1. **iPhone 必须处于黑屏锁屏状态 (Locked & Black Screen)**:
   - ❌ 如果你点亮 iPhone 屏幕、解锁进入主界面，macOS 会**立即断开或暂停**摄像头流！
   - ✅ 正确做法：点击 iPhone 电源键熄屏锁定。
2. **iPhone 必须横向放置且保持固定 (Landscape & Stationary)**:
   - ❌ 坚屏握持或拿在手里晃动，iOS 连续互通驱动不会激活。
   - ✅ 正确做法：使用 MagSafe 支架横屏固定在显示器上方，或横放在桌面上保持不动数秒。
3. **同账号与同一网络 (Same Apple ID, Wi-Fi, Bluetooth)**:
   - Mac 与 iPhone 必须登录同一个 Apple ID。
   - 蓝牙与 Wi-Fi 均需处于开启状态。
4. **系统开关必须开启**:
   - iPhone: **设置 > 通用 > 隔空播放与接力 > 连续互通相机** 确保已勾选开启。

---

## 💻 2. MacBook Clamshell Mode (笔记本合盖模式)

When your MacBook is connected to an external display with the laptop screen closed (`AppleClamshellState = Yes`):

### ⚠️ macOS Hardware Constraint:
- **Built-in FaceTime HD Camera is physically powered off**:
  - macOS automatically cuts power to the lid-mounted camera for privacy and thermal safety.
  - Browser API calls (`getUserMedia`) will fail with `DevicesNotFoundError` or `NotFoundError` ("未找到摄像头").
- **Solution**:
  - **Option A**: Slightly open the MacBook lid (even by 1 inch / 2–3 cm). The FaceTime camera will instantly power back on and become detectable.
  - **Option B**: Use an external USB webcam or an iPhone via Continuity Camera.

---

## 🔒 3. Device Exclusive Locks (设备被其他应用独占)

macOS does not allow multiple applications to simultaneously open a direct hardware camera stream unless an intermediate virtual camera driver (like OBS Virtual Camera) is used.

### Symptoms:
- Error: `NotReadableError: Could not start video source` or `TrackStartError`.
- Cause: Background application is holding the camera handle:
  - **QuickTime Player**: Initiated a "New Movie Recording" or "New Screen Recording" with camera enabled.
  - **Zoom / Microsoft Teams / FaceTime / Google Meet**: Running in the background with camera active.
- **Fix**:
  - Quit the conflicting app completely (`Cmd + Q`).
  - Return to PipCast and click **"⚡ 重新检测"** in the Diagnostics modal.
