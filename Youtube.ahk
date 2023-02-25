#SingleInstance, Force
SetTitleMatchMode, 2
I_Icon = yt.png
IfExist, %I_Icon%
	Menu, Tray, Icon, %I_Icon%

$F1::YT("{Space}") ;To Pause the YT Video
F2::YT("{Left}") ;To skip back 5 Secs
F3::YT("{Right}") ;To skip forward 5 Secs
^+.::YT("+.") ; To Speed  the video
^+,::YT("+,") ; To Slow Down the Video

YT(key){
	WinGetActiveTitle, originalWindow
	if WinExist("YouTube ahk_exe chrome.exe")
		WinActivate, YouTube ahk_exe chrome.exe
	else
		WinActivate, ahk_exe chrome.exe
	Send % key
	WinActivate, %originalWindow%
	Return
}

^!y::Pause
