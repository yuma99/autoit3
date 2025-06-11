; 定義身分證號和密碼
Local $sID = "xxxx"
Local $sPassword = "xxxxx"

; 啟動軟體（假設軟體路徑為 "C:\CTYAP\daqCTYAP.exe"）
Run("C:\CTYAP\daqCTYAP.exe")

; 等待軟體窗口出現
WinWaitActive("國泰證券")

; 輸入身分證號
ControlSetText("國泰證券", "", "[CLASS:Edit; INSTANCE:3]", $sID)

; 輸入密碼
ControlSetText("國泰證券", "", "[CLASS:Edit; INSTANCE:4]", $sPassword)

; 點擊登入按鈕
ControlClick("國泰證券", "", "[CLASS:Button; INSTANCE:10]")