#SingleInstance, Force
SetTitleMatchMode, 2
I_Icon = yt.png
IfExist, %I_Icon%
	Menu, Tray, Icon, %I_Icon%

;---------- The Big Boss ---------
$F1::YT("{Space}") ;To Pause the YT Video

; ----- Note chrome Extension Needed for this one ----
; ------- Pause Control -----------
#k::YT("{k}") ;pause the vido

; ------- 10 Seocnds Back and Forth -----------
#j::YT("{[}") ;To skip back 10 Secs
#l::YT("{]}") ;To skip forward 5 Secs

; ------- 5 Seocnds Back and Forth -----------
F2::YT("{a}") ;To skip back 5 Secs
F3::YT("{d}") ;To skip forward 5 Secs
; ------ 5 Seoncds Back and Forth More Fnacy -----------
#a::YT("{a}") ;To skip back 5 Secs
#d::YT("{d}") ;To skip forward 5 Secs

; ------- 1 Seocnds Back and Forth -----------
F6::YT("{z}") ;To skip forward 1 Secs
F7::YT("{x}") ;To skip forward 1 Secs
; ------ 1 Seoncds Back and Forth More Fnacy -----------
#z::YT("{z}") ;To skip forward 1 Secs
#x::YT("{x}") ;To skip forward 1 Secs

; ----- Speed Control ------------------------
#e::YT("e") ; To Speed  the video
#q::YT("q") ; To Slow Down the Video
; ----- Subtitles Control -----------------------
#c::YT("c") ; To show video subtitles

; ---------------------------------------------
;^+.::YT("+.") ; To Speed  the video
;^+,::YT("+,") ; To Slow Down the Video

YT(key){
	WinGetActiveTitle, originalWindow
	if WinExist("YouTube ahk_exe chrome.exe")
		WinActivate, YouTube ahk_exe chrome.exe
	else if WinExist("mp4 ahk_exe chrome.exe")
		WinActivate, mp4 ahk_exe chrome.exe
	else
		WinActivate, ahk_exe chrome.exe
	SendInput, % key
	WinActivate, %originalWindow%
	Return
}

^!y::Pause
