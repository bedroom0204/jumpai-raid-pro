# JumpAI Raid Pro — AI 視覺跳繩計數與怪獸討伐

> 專注運動體驗・實時 AI 視覺追蹤・怪獸血量討伐・超大計數看板・PWA 手機支援

[![GitHub Pages](https://img.shields.io/badge/Online_Demo-GitHub_Pages-brightgreen?logo=github)](https://bedroom0204.github.io/jumpai-raid-pro/)
![PWA Ready](https://img.shields.io/badge/PWA-Ready-cyan.svg)
![MediaPipe Pose](https://img.shields.io/badge/AI-MediaPipe%20Pose-lime.svg)
![License: MIT](https://img.shields.io/badge/License-MIT-emerald.svg)

🌐 **線上即開即用官方網址**：👉 **[https://bedroom0204.github.io/jumpai-raid-pro/](https://bedroom0204.github.io/jumpai-raid-pro/)**  
*(手機、平板與筆電開啟瀏覽器即可授權鏡頭跳繩，免安裝 App)*

---

## 🎮 核心遊玩亮點 (Core Gameplay)

1. **👁️ 實時畫面 (Live AI Vision)**
   - 基於 MediaPipe Pose 人體姿態辨識，即時骨骼繪製。
   - 內建智慧防走路誤判機制，精準排除踏步與橫移，只計有效跳躍。

2. **👾 打怪討伐戰 (Monster Raid)**
   - 每日怪獸、3 日中 Boss 與 7 日大 Boss 循環登場。
   - 動態巨型 HP 血條、跳躍受擊震撼反饋與 `-1 HP!` 飄字爆擊。
   - 團隊傷害即時統計與 MVP 貢獻榮譽。

3. **⚡ 超巨大跳繩計次 (Giant Hero Counter)**
   - 專為運動距離（2~3 公尺）設計的超巨型霓虹字體，一眼看清。
   - 🔥 連跳 Combo 動態激勵、運動時間與即時轉速 (RPM)。
   - 大尺寸高對比控制按鈕，運動流汗也能輕鬆隨手暫停。

4. **🗣️ 語音報數與運動輔助**
   - 支援 Web Speech API 繁體中文即時語音報數與突破連跳激勵。
   - 螢幕防休眠（Screen Wake Lock），跳繩過程中手機螢幕不自動黑屏。

---

## 📱 PWA 手機加入主畫面

免下載應用程式，即可享有 App 級全螢幕體驗：
1. **iPhone / iPad (Safari)**：打開網址 ➔ 點擊底部「分享」 ➔ 選擇「加入主畫面」。
2. **Android (Chrome)**：打開網址 ➔ 點擊右上「⋮」選單 ➔ 選擇「安裝應用程式」或「加到主螢幕」。

---

## ⌨️ 鍵盤操作快捷鍵

| 按鍵 | 功能說明 |
| :--- | :--- |
| `Space` (空白鍵) | 手動跳躍 / 試跳 +1 |
| `P` | 暫停 / 繼續計數 |
| `F` | 全螢幕模式切換 |
| `M` | 音效靜音 / 開啟 |
| `V` | 繁體中文語音報數開關 |
| `C` | 切換前後鏡頭 (行動裝置) |
| `?` 或 `H` | 開啟快捷鍵說明 |
| `Esc` | 關閉所有彈出視窗 |

---

## 🚀 本機運行

雙擊目錄內的 **`啟動本機預覽.bat`** 即可在瀏覽器開啟本機伺服器 (`http://localhost:8080`)。

若有代碼更新，雙擊 **`一鍵推送GitHub.bat`** 即可同步推送到 GitHub，GitHub Pages 線上網頁將全自動連動更新！

---

## 📄 專案結構

```
jumpai-raid-pro/
├── index.html            # 核心單頁應用 (AI 視覺、怪獸討伐、計數引擎)
├── manifest.json         # PWA 漸進式應用設定
├── icon-512.svg          # 賽博風格向量圖標
├── 啟動本機預覽.bat      # 雙擊本機預覽
├── 一鍵推送GitHub.bat   # 雙擊自動同步推送至 GitHub
└── README.md             # 專案說明手冊
```
