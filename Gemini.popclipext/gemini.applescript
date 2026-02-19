on run
  set selectedText to "{popclip text}"
  if selectedText is "" then error "No selected text found." number 700

  set finalPrompt to "【原文】" & linefeed & selectedText & linefeed & linefeed & "【问题】" & linefeed
  set the clipboard to finalPrompt

  open location "https://gemini.google.com/app"
end run
