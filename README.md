# Gemini PopClip Extension

本版本已验证成功：划词后点击图标，自动打开 Gemini，并自动粘贴模板。

## 难点说明（为什么不用 URL 预填）

这事儿不赖你，目前消费者版 Gemini（`gemini.google.com`）原生已经封堵了通过 URL 参数（如 `?q=` 或 `?prompt=`）预填充提示词的通道。要实现“跳转并一键填入”，要么直接切换到官方原生支持此能力的 Google AI Studio，要么用本地操作系统脚本或浏览器插件来“强行喂数据”。

### 关键事实 / 判据

- C 端防御机制：出于防止跨站脚本（XSS）攻击和平台防滥用的考量，Google 移除了 `gemini.google.com` 接收外部 URL 参数直接写入输入框的逻辑。带未知 query 参数时，页面加载后可能自动截断或忽略。
- 开发者端开放：Google AI Studio 面向开发者侧保留了 URL 预填能力，支持 `?prompt=` 跳转并预填。

## 用法

1. 下载并安装 `Gemini.popclipextz`。
2. 在任意应用中划词，点击 Gemini 图标。
3. 自动打开 `https://gemini.google.com/u/1/app`。
4. 自动粘贴以下模板到输入框：

```text
【原文】
<选中文本>

【问题】
```

5. 在 `【问题】` 下输入你的问题并发送。

## 行为说明

- 不弹输入框。
- 不自动发送。
- 自动粘贴依赖 macOS 辅助功能权限（PopClip）。
- 若自动粘贴失败，模板已在剪贴板中，可手动 `Command+V`。
- 在 PopClip 设置窗口中禁用触发（`excludedApps`）。

## 下载

- Releases: <https://github.com/GravityPoet/popclip-gemini-extension/releases>

## 官方目录 PR

- <https://github.com/pilotmoon/PopClip-Extensions/pull/1322>
