; Cycles between default audio devices 

^\::Go()

Go() {
	Run, mmsys.cpl
	SoundBeep
	
	WinWait, Audio Enhancements Problem, , 5
	IfWinExist, Audio Enhancements Problem 
	{
		WinActivate, Audio Enhancements Problem
		Send, {Right}
		Send, {Enter}
	}
	; WinWait, Audio Enhancements Problem
	
	WinWait, Sound
	WinActivate, Sound
	Send, {Down}
	
	ControlGet, TopDeviceDefault, Enabled, , Button2, Sound
	if (TopDeviceDefault = 0) 
	{
		Send, {Down}
	}

	ControlClick, Button2, Sound
	WinClose, Sound
}
