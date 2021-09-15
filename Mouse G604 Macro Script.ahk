;// Logitech G604 69+ Programmable Control with AHK
;// By ahmadsodikin-the3rd
;// GitHub : https://github.com/ahmadsodikin-the3rd/a52-g604-69-control-macro.git

SetNumLockState, On

; Default Layer
;================================================
NumpadMult::Send ^#{Left} ;// Prev Virtual Desktop
NumpadDiv::Send ^#{Right} ;// Next Virtual Desktop
NumpadAdd::Send #t ;// Select taskbar app
NumpadSub::Send #d ;//Hide/Show Desktop
NumpadSub & WheelUp:: Send #{Up} ;//Maximise
NumpadSub & WheelDown:: Send #{Down} ;// Minimise

;// Custom App 1
Numpad1::return
;Numpad1 & LButton::
;Numpad1 & MButton::
;Numpad1 & RButton::
;Numpad1 & WheelUp::
;Numpad1 & WheelDown::
;Numpad1 & NumpadAdd::
;Numpad1 & NumpadSub::
;Numpad1 & NumpadMult::
;Numpad1 & NumpadDiv::

;// Custom App 2
Numpad2::return
;Numpad2 & LButton::
;Numpad2 & MButton::
;Numpad2 & RButton::
;Numpad2 & WheelUp::
;Numpad2 & WheelDown::
;Numpad2 & NumpadAdd::
;Numpad2 & NumpadSub::
;Numpad2 & NumpadMult::
;Numpad2 & NumpadDiv::

;// Global Tab Layer
Numpad3::Send ^{Tab}
Numpad3 & LButton::Send ^t
Numpad3 & MButton::Send ^+t
Numpad3 & RButton::Send ^w
Numpad3 & WheelUp::Send {WheelRight}
Numpad3 & WheelDown::Send {WheelLeft}
;Numpad3 & NumpadAdd::
;Numpad3 & NumpadSub::
Numpad3 & NumpadMult::Send ^{Tab}
Numpad3 & NumpadDiv::Send ^+{Tab}

;// Global Operational Layer
Numpad4::Send {Enter}
Numpad4 & LButton::Send ^c
Numpad4 & MButton::Send #+s
Numpad4 & RButton::Send ^v
Numpad4 & WheelUp::Send {End}
Numpad4 & WheelDown::Send {Home}
;Numpad4 & NumpadAdd::
Numpad4 & NumpadSub::Send {Delete}
Numpad4 & NumpadMult:: ;// Line paste
	Send {Home}{Home}
	Send +{End}
	Send ^v
return
Numpad4 & NumpadDiv:: ;// Line Copy
	Send {Home}{Home}
	Send +{End}
	Send ^c
return

;// Global Windows Layer
Numpad5::Send !{Tab}
Numpad5 & LButton::Send #{Tab} ;// Task view
;Numpad5 & MButton::
Numpad5 & RButton::Send {LWin}
Numpad5 & WheelUp::Send ^#{Right}
Numpad5 & WheelDown::Send ^#{Left}
;Numpad5 & NumpadAdd::
Numpad5 & NumpadSub::Send !{F4}
Numpad5 & NumpadMult::Send #t
Numpad5 & NumpadDiv::Send #t

;// Global Media Layer
Numpad6::Send {Media_Play_Pause}
Numpad6 & LButton::Send {Left}
;Numpad6 & MButton::
Numpad6 & RButton::Send {Right}
Numpad6 & WheelUp::Send {Volume_Up}
Numpad6 & WheelDown::Send {Volume_Down}
;Numpad6 & NumpadAdd::
;Numpad6 & NumpadSub::
Numpad6 & NumpadMult::Send {Up}
Numpad6 & NumpadDiv::Send {Down}

; Chrome
;================================================
#IfWinActive ahk_exe chrome.exe
	Numpad1::Send {MButton}
	Numpad1 & LButton:: ;// Search udin
		Send udin`%
		Send {Enter}
	return
	;Numpad1 & MButton::
	Numpad1 & RButton::^+j ;// Dev Console
	Numpad1 & WheelUp::Send ^{+}
	Numpad1 & WheelDown::Send ^{-}
	;Numpad1 & NumpadAdd::
	;Numpad1 & NumpadSub::
	Numpad1 & NumpadMult::Send {Browser_Forward}
	Numpad1 & NumpadDiv::Send {Browser_Back}

	Numpad2::Send {Home}{F5}
	Numpad2 & LButton::Send {Space} ;// Pause for video
	;Numpad2 & MButton::
	Numpad2 & RButton::Send f ;// Fullscreen for video
	Numpad2 & WheelUp::Send {Up} ;// For video
	Numpad2 & WheelDown::Send {Up} ;// For video
	Numpad2 & NumpadAdd::Send {Up} ;// For video
	Numpad2 & NumpadSub::Send {Down} ;// For video
	Numpad2 & NumpadMult::Send {Right} ;// For video
	Numpad2 & NumpadDiv::Send {Left} ;// For video
	
	~RButton Up::
	if (GetKeyState("Numpad1","P") or GetKeyState("Numpad2","P") or GetKeyState("Numpad3","P"))
	{
		Sleep, 100
		Send {Escape}
	}
	return
#If


; Visual Studio 2019
;================================================
#IfWinActive ahk_exe devenv.exe
	Numpad1::Send ^[^s ;// Goto Solution explorer 
	Numpad1 & LButton::Send {F5}
	;Numpad1 & MButton::
	Numpad1 & RButton::Send +{F5}
	;Numpad1 & WheelUp::
	;Numpad1 & WheelDown::
	;Numpad1 & NumpadAdd::
	;Numpad1 & NumpadSub::
	;Numpad1 & NumpadMult::
	;Numpad1 & NumpadDiv::

	Numpad2::Send ^m^o
	Numpad2 & LButton::Send {LButton}^{F12} ;// Goto Implementation
	Numpad2 & MButton::Send {LButton}+{F12} ;// Find All Referencen
	Numpad2 & RButton::Send {LButton}{F12} ;// Goto Definition
	;Numpad2 & WheelUp::
	;Numpad2 & WheelDown::
	;Numpad2 & NumpadAdd::
	;Numpad2 & NumpadSub::
	;Numpad2 & NumpadMult::
	;Numpad2 & NumpadDiv::
	
	Numpad3 & RButton::Send ^{F4} ;// Close Tab	
#If


; Visual Code 
;================================================
#IfWinActive ahk_exe Code.exe
	Numpad1::Send ^+e ;// Solution explorer
	Numpad1 & LButton::Send ^e ;// Find file
	Numpad1 & MButton::Send ^f ;// Find
	Numpad1 & RButton::Send ^+f ;// Find in all file
	;Numpad1 & WheelUp::
	;Numpad1 & WheelDown::
	;Numpad1 & NumpadAdd::
	;Numpad1 & NumpadSub::
	Numpad1 & NumpadMult:: ;// Find File with paste
		Send ^e
		Sleep 500
		Send ^v
		Sleep 500
		Send {Enter}		
	return
	;Numpad1 & NumpadDiv::

	Numpad2::Send ^k^2 ;// Collapse line
	Numpad2 & LButton::Send ^{F12} ;// Goto Impl
	Numpad2 & MButton::Send +!{F12} ;// Find All Ref
	Numpad2 & RButton::Send {F12} ;// Goto Definition
	;Numpad2 & WheelUp::
	;Numpad2 & WheelDown::
	;Numpad2 & NumpadAdd::
	;Numpad2 & NumpadSub::
	;Numpad2 & NumpadMult::
	;Numpad2 & NumpadDiv::
#If

; Navicat
;================================================
#IfWinActive ahk_exe navicat.exe
	Numpad1::Send {F5}
	Numpad1 & LButton::Send ^f
	;Numpad1 & MButton::
	Numpad1 & RButton:: ;// Filter
		Send {RButton}
		Sleep 100
		Send {Up}{Up}{Up}{Up} {Right}
		Sleep 100
		Send {Enter}
	return
	Numpad1 & WheelUp::Send ^{Home}
	Numpad1 & WheelDown::Send ^{End}
	;Numpad1 & NumpadAdd::
	;Numpad1 & NumpadSub::
	;Numpad1 & NumpadMult::
	;Numpad1 & NumpadDiv::

	Numpad2::Send ^r ;// Run Query
	Numpad2 & LButton::Send ^q ;// New Query
	;Numpad2 & MButton::
	;Numpad2 & RButton::
	;Numpad2 & WheelUp::
	;Numpad2 & WheelDown::
	;Numpad2 & NumpadAdd::
	;Numpad2 & NumpadSub::
	;Numpad2 & NumpadMult::
	;Numpad2 & NumpadDiv::
#If

; MS Team
;================================================
#IfWinActive ahk_exe Teams.exe
	Numpad1::Send ^+m ;// Mute Toggle 
	Numpad1 & LButton::Send ^2; // Open Chat
	;Numpad1 & MButton::
	Numpad1 & RButton::Send ^3; // Open Team
	;Numpad1 & WheelUp::
	;Numpad1 & WheelDown::
	;Numpad1 & NumpadAdd::
	;Numpad1 & NumpadSub::
	;Numpad1 & NumpadMult::
	;Numpad1 & NumpadDiv::

	Numpad2::Send #{PrintScreen} ;// Capture & Save screen 
	Numpad2 & LButton::Send #{Up} ;// Maximize
	;Numpad2 & MButton::
	Numpad2 & RButton::Send #{Down} ;// Restore or Minimize
	;Numpad2 & WheelUp::
	;Numpad2 & WheelDown::
	;Numpad2 & NumpadAdd::
	;Numpad2 & NumpadSub::
	;Numpad2 & NumpadMult::
	;Numpad2 & NumpadDiv::
#If

; Template
;================================================
;#IfWinActive ahk_exe Template.exe
	;Numpad1::
	;Numpad1 & LButton::
	;Numpad1 & MButton::
	;Numpad1 & RButton::
	;Numpad1 & WheelUp::
	;Numpad1 & WheelDown::
	;Numpad1 & NumpadAdd::
	;Numpad1 & NumpadSub::
	;Numpad1 & NumpadMult::
	;Numpad1 & NumpadDiv::

	;Numpad2::
	;Numpad2 & LButton::
	;Numpad2 & MButton::
	;Numpad2 & RButton::
	;Numpad2 & WheelUp::
	;Numpad2 & WheelDown::
	;Numpad2 & NumpadAdd::
	;Numpad2 & NumpadSub::
	;Numpad2 & NumpadMult::
	;Numpad2 & NumpadDiv::
	
	;Numpad3::
	;Numpad3 & LButton::
	;Numpad3 & MButton::
	;Numpad3 & RButton::
	;Numpad3 & WheelUp::
	;Numpad3 & WheelDown::
	;Numpad3 & NumpadAdd::
	;Numpad3 & NumpadSub::
	;Numpad3 & NumpadMult::
	;Numpad3 & NumpadDiv::
	
	;Numpad4::
	;Numpad4 & LButton::
	;Numpad4 & MButton::
	;Numpad4 & RButton::
	;Numpad4 & WheelUp::
	;Numpad4 & WheelDown::
	;Numpad4 & NumpadAdd::
	;Numpad4 & NumpadSub::
	;Numpad4 & NumpadMult::
	;Numpad4 & NumpadDiv::
	
	;Numpad5::
	;Numpad5 & LButton::
	;Numpad5 & MButton::
	;Numpad5 & RButton::
	;Numpad5 & WheelUp::
	;Numpad5 & WheelDown::
	;Numpad5 & NumpadAdd::
	;Numpad5 & NumpadSub::
	;Numpad5 & NumpadMult::
	;Numpad5 & NumpadDiv::
	
	;Numpad6::
	;Numpad6 & LButton::
	;Numpad6 & MButton::
	;Numpad6 & RButton::
	;Numpad6 & WheelUp::
	;Numpad6 & WheelDown::
	;Numpad6 & NumpadAdd::
	;Numpad6 & NumpadSub::
	;Numpad6 & NumpadMult::
	;Numpad6 & NumpadDiv::
;#If
