#SingleInstance, Force
I_Icon = yt.png
IfExist, %I_Icon%
	Menu, Tray, Icon, %I_Icon%

$F1::YT("{Space}") ;Pause the YT Video
F2::YT("{Left}") ;Rewind 5 Secs
F3::YT("{Right}") ;Forward 5 Secs
^+.::YT("+.") ;Speed up the video
^+,::YT("+,") ;Slow Down the Video

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