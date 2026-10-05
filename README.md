# JumpAI Raid Pro — AI 即時跳繩計數、防誤判辨識與多人怪獸討伐系統

> 科技賦能體能訓練・AI 視覺偵測・防走路誤判・7 日怪獸討伐戰・100 成就圖鑑・PWA 支援

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new)
![License: MIT](https://img.shields.io/badge/License-MIT-emerald.svg)
![PWA Ready](https://img.shields.io/badge/PWA-Ready-cyan.svg)
![MediaPipe Pose](https://img.shields.io/badge/AI-MediaPipe%20Pose-lime.svg)

---

## 🌟 核心特色功能 (Core Features)

1. **三階段沉浸流程引導 (Three-Stage Flow)**
   - **步驟 1：參戰人物設定與拍照**：支援多人臉部快照拍攝或隨機賽博風格向量頭像生成。
   - **步驟 2：鏡頭全身定位與 3 下試跳測試**：中央對齊提示框、地面動態基準線鎖定與 3 下有效跳躍校準。
   - **步驟 3：怪獸登場・正式討伐**：完成校準後怪獸強勢登場，展開血量討伐戰。

2. **AI 防走路/移動誤判生物力學監視器 (Anti-Walk Gait Filter)**
   - ① **水平位移穩定度**：限制軀幹水平橫移速率 < 14%/s，精準排除走路移動。
   - ② **雙腳同步起跳率**：左右腳踝與髖部高度同步率 ≥ 72%，排除單腳踏步或踮腳。
   - ③ **雙手搖繩姿態**：雙手腕部對稱護腰檢測，排除大幅度擺臂晃動。
   - ④ **滯空彈跳週期**：嚴格檢驗空中滯空時間（95ms ~ 720ms），過濾蹲起或慢速踏步。

3. **7 日怪獸討伐戰與團隊貢獻 (Monster Raid & Contribution)**
   - 每日怪獸、第 3 天中 Boss、第 7 天大 Boss，具備動態浮動 SVG 傷害打擊特效。
   - 多人即時傷害分段進度條，動態計算 MVP 與貢獻比率。

4. **實用運動體驗強化 (New Refinements)**
   - 💡 **Screen Wake Lock 螢幕防休眠**：運動中手機與平板螢幕保持常亮，防止跳繩跳到一半自動鎖屏中斷。
   - 🗣️ **Web Speech API 繁體中文即時語音報數**：每 10 下語音自動報數、50/100 連跳激勵、走路誤判語音提示、擊破怪獸祝賀。
   - 🖥️ **全螢幕沉浸模式 (Fullscreen API)**：一鍵最大化畫面，隱藏瀏覽器網址列。
   - 📳 **行動裝置觸覺回饋 (Vibration API)**：跳躍與擊敗怪獸產生真實打擊震動感。
   - 📸 **今日戰報分享卡片生成 (Share Workout Card)**：一鍵在 Canvas 生成高質感 Cyberpunk 成果卡，支援下載 PNG 與複製文字分享至社群/LINE。

5. **數據永續安全與離線同步 (Cookies & Backup)**
   - LocalStorage + 瀏覽器 Cookies 自動分塊雙重持久化儲存。
   - 支援完整 JSON 備份檔下載、文字複製與匯入還原。

---

## ⌨️ 鍵盤操作快捷鍵 (Keyboard Shortcuts)

| 按鍵 | 功能說明 |
| :--- | :--- |
| `Space` (空白鍵) | 觸發手動跳躍 / AI 試跳 +1 |
| `P` | 暫停 / 繼續運動計數 |
| `F` | 全螢幕模式切換 |
| `M` | 音效靜音 / 開啟 |
| `V` | 繁體中文語音報數開關 |
| `C` | 切換前後鏡頭 (手機/平板) |
| `1` / `2` / `3` | 快速切換步驟 1 / 步驟 2 / 步驟 3 |
| `?` 或 `H` | 開啟快捷鍵說明彈窗 |
| `Esc` | 快速關閉所有彈出視窗 |

---

## 🚀 本機運行測試 (Local Preview)

本專案為純前端單頁式應用（Vanilla HTML5 + JS + CDN），無需複雜建置流程。

```powershell
# 在專案目錄下啟動 Python 本機伺服器
cd C:\Users\SQA\jumpai-raid-pro
python -m http.server 8080
```
開啟瀏覽器訪問：`http://localhost:8080` 即可預覽使用！

---

## 🌐 上傳部署至 Vercel (Online Deployment)

> [!IMPORTANT]
> 鏡頭功能（WebRTC `getUserMedia`）在瀏覽器安全限制下**必須在 HTTPS 或 localhost 運行**。部署至 Vercel 會自動取得免費全球 CDN 與 HTTPS 證書，鏡頭即可在手機與電腦正常運作！

### 方法一：GitHub + Vercel（推薦，自動化 CI/CD）
1. 建立一個新的 GitHub 儲存庫（例如 `jumpai-raid-pro`）。
2. 將此目錄檔案推送至 GitHub：
   ```bash
   git init
   git add .
   git commit -m "feat: initial commit for JumpAI Raid Pro"
   git remote add origin https://github.com/<你的使用者名稱>/jumpai-raid-pro.git
   git branch -M main
   git push -u origin main
   ```
3. 前往 [Vercel 官網 (vercel.com)](https://vercel.com/) 登入帳號。
4. 點選 **Add New...** -> **Project**，選取剛建立的 GitHub 專案並點擊 **Import**。
5. Framework Preset 選擇 **Other**，點擊 **Deploy** 即可在 10 秒內完成發布！

### 方法二：使用 Vercel CLI 終端機部屬（一鍵上傳）
若本機已安裝 Node.js：
```powershell
cd C:\Users\SQA\jumpai-raid-pro
npx vercel
```
- 依照提示登入 Vercel 帳號，回答確認選項後即可秒級取得網址！
- 生產環境更新：`npx vercel --prod`

### 方法三：Netlify / Cloudflare Pages 網頁拖曳部屬（免安裝 CLI）
1. 前往 [Netlify Drop (app.netlify.com/drop)](https://app.netlify.com/drop)。
2. 將 `C:\Users\SQA\jumpai-raid-pro\` 資料夾整包拖曳進去。
3. 立即生成免費的公開 HTTPS 網址！

---

## 📱 PWA 手機桌面安裝指南

1. **iPhone / iPad (iOS Safari)**：
   - 開啟網址 -> 點擊下方「分享」按鈕 -> 選擇「加入主畫面」。
2. **Android (Chrome)**：
   - 開啟網址 -> 點擊右上角選單「⋮」-> 選擇「安裝應用程式」或「加到主螢幕」。
3. 安裝後即可像原生 App 一樣以全螢幕開啟，不受瀏覽器網址列干擾！

---

## 📄 專案目錄結構

```
jumpai-raid-pro/
├── index.html        # 核心應用程式主頁面 (含所有 AI 辨識、動畫與音訊邏輯)
├── vercel.json       # Vercel 路由設定、安全標頭與靜態快取
├── manifest.json     # PWA 漸進式應用設定檔
├── icon-512.svg      # 高畫質 SVG 應用圖標
├── package.json      # 專案資訊與 NPM 腳本
└── README.md         # 專案完整說明手冊
```
