# Gemini PopClip Extension

一个支持“先补充问题，再去 Gemini 提问”的 PopClip 扩展。

## 先看这里（怎么用）

1. 在 [Releases](https://github.com/GravityPoet/popclip-gemini-extension/releases) 下载 `Gemini.popclipextz` 并双击安装。
2. 在任意应用里划词，点击 PopClip 的 Gemini 图标。
3. 在弹窗输入补充问题后点击“发送”。
4. 插件会复制完整提示词到剪贴板，并打开 Gemini 页面。
5. 在 Gemini 输入框按 `Command+V`，再按回车发送。

## 下载

- Release 页面：<https://github.com/GravityPoet/popclip-gemini-extension/releases>
- 当前版本（2026-02-18）：<https://github.com/GravityPoet/popclip-gemini-extension/releases/download/v2026.02.18.1/Gemini.popclipextz>

## 提示词格式

```text
【原文】
<选中文本>

【问题】
<补充问题>
```

## 为什么默认复制粘贴

Gemini Web 的自动填充/自动发送在不同账号、地区、浏览器策略下稳定性不一致。  
本插件优先保证“每次都能把内容带过去”，因此采用“复制到剪贴板 + 打开 Gemini 页面”的稳定路径。

## 官方插件列表状态

- 已提交官方目录 PR（OPEN）：<https://github.com/pilotmoon/PopClip-Extensions/pull/1322>
- 在官方合并前，请先从本仓库 Releases 安装。

## 目录

- `Gemini.popclipext/Config.json`
- `Gemini.popclipext/gemini.applescript`
- `Gemini.popclipext/Readme.md`
- `Gemini.popclipext/gemini.png`
