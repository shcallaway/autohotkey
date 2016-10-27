;Disable mouse wheel zooming in Chrome

#IfWinActive, ahk_class Chrome_WidgetWin_1 
    ^WheelDown::return 
#IfWinActive, ahk_class Chrome_WidgetWin_1 
    ^WheelUp::return
#MaxHotkeysPerInterval 1000
