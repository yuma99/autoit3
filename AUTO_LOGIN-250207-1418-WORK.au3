; 定義批次資訊
Local $sID = "967070"
Local $sLOT = "63S20130.1-SLT1"
Local $sBIN = "1"
Local $sQTY = "7512"
; 啟動軟體（假設軟體路徑為 "C:\CTYAP\daqCTYAP.exe"）
Run("D:\SPIL\yumachang\MTK_DATA\ECID_COMPARE\ECID_Check.exe")
; 等待軟體窗口出現
WinWaitActive("ECID_Check  VER : 2023.9.8.1")
; 輸入身分證號
ControlSetText("ECID_Check  VER : 2023.9.8.1", "", "[NAME:UIDTXT]", $sID)
; 點擊登入按鈕
ControlClick("ECID_Check  VER : 2023.9.8.1", "", "[NAME:Login_BTN]")
 
; 輸入批號
ControlSetText("ECID_Check  VER : 2023.9.8.1", "", "[NAME:Search_TXT]", $sLOT)
 
; 點擊Add按鈕
ControlClick("ECID_Check  VER : 2023.9.8.1", "", "[NAME:SAdd_BTN]")
 
; 輸入BIN1
ControlSetText("ECID_Check  VER : 2023.9.8.1", "", "[NAME:BINTXT]", $sBIN)
 
; 輸入QTY
ControlSetText("ECID_Check  VER : 2023.9.8.1", "", "[NAME:QTYTXT]", $sQTY)
 
; 點擊Add按鈕
ControlClick("ECID_Check  VER : 2023.9.8.1", "", "[NAME:ADD_BTN]")
 
; 點擊RunCheck按鈕
ControlClick("ECID_Check  VER : 2023.9.8.1", "", "[NAME:RunCheck_BTN]")
 
; 點擊ResetAll按鈕
ControlClick("ECID_Check  VER : 2023.9.8.1", "", "[NAME:ResetAll_BTN]")