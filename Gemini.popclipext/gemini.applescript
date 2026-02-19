on run
  set selectedText to "{popclip text}"
  if selectedText is "" then error "No selected text found." number 700

  set finalPrompt to "【原文】" & linefeed & selectedText & linefeed & linefeed & "【问题】" & linefeed
  set the clipboard to finalPrompt

  tell application "Google Chrome"
    activate
    open location "https://gemini.google.com/app"
  end tell

  delay 1.5

  try
    tell application "System Events"
      tell process "Google Chrome"
        set frontmost to true
        keystroke "v" using command down
      end tell
    end tell
  on error
    display notification "已复制模板，请在 Gemini 输入框按 Command+V 粘贴。" with title "Gemini"
  end try
end run
