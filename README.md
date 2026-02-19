# Gemini PopClip Extension

本版本已验证成功：划词后点击图标，自动打开 Gemini，并自动粘贴模板。

## 用法

1. 下载并安装 `Gemini.popclipextz`。
2. 在任意应用中划词，点击 Gemini 图标。
3. 自动打开 `https://gemini.google.com/app`。
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
