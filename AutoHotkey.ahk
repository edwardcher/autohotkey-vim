; 
; AutoHotkey Script 
;  
; Description: Set vim key bindings (basic navigation is supported)
; i.e. hjkl, ctrl+u/ctrl+d, gg/shift+g 
;
; Author: edwardcher.monreal@gmail.com
;
WinGetClass, win_class, A
If (WinActive("ahk_class %win_class%")) {
	$h::
		if GetKeyState("Capslock", "T") 
			Send {Left}
		else
			Send h
		return
	$l::
		if GetKeyState("Capslock", "T")
			Send {Right}
		else
			Send l
		return
	$j::
		if GetKeyState("Capslock", "T") 
			Send {Down}
		else
			Send j
		return
	$k::
		if GetKeyState("Capslock", "T")
			Send {Up}
		else
			Send k
		return
	$o::
		if GetKeyState("Capslock", "T") 
			Send {Enter}
		else
			Send o
		return
	$d::
		if GetKeyState("Capslock", "T") 
			Send {Delete}
		else
			Send d
		return
	$^d::
		if GetKeyState("Capslock", "T") 
			Send {PgDn}
		else
			Send ^n
		return
	$^u::
		if GetKeyState("Capslock", "T")
			Send {PgUp}
		else
			Send ^p
		return
	$+g::
		if GetKeyState("Capslock", "T")
			Send {End}{End}
		else
			Send G
		return
	$~g::
		if ((A_PriorHotkey <> "$~g" or A_TimeSincePriorHotkey > 333))
    			KeyWait, g
		else
			if GetKeyState("Capslock", "T") 
				Send {Home}
			else
				send g
		return
}	 
