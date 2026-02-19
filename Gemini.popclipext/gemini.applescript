on run
  set rawText to "{popclip text}"
  set selectedText to my trimText(rawText)
  if selectedText is "" then error "No selected text found." number 700

  set finalPrompt to "【原文】" & linefeed & selectedText & linefeed & linefeed & "【问题】" & linefeed
  set the clipboard to finalPrompt

  tell application "Google Chrome"
    activate
    open location "https://gemini.google.com/u/1/app"
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

on trimText(inputText)
  set trimmed to do shell script "/usr/bin/python3 -c " & quoted form of "import sys; print(sys.argv[1].strip())" & space & quoted form of inputText
  return trimmed
end trimText
