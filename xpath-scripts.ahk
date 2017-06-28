#SingleInstance force

^q::ReloadScript()

;°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
;~ SQL F5 poga
	#IfWinActive, ahk_exe Ssms.exe
		XButton1::
			Send, {f5}
		Return
	#IfWinActive
;°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
;Analyst Frontend loga atvert Xpath testeri, ja selektets apakšnodalijums ar peles malas pogu uz leju
	#IfWinActive, B.I.G. Screen Analyst Frontend - [Parser]
		XButton2::
			Send, {f6}
		Return
	#IfWinActive
;°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
;Aizver Xpath testeri ar peles malas pogu uz leju
	#IfWinActive, XPath-Tester
		XButton2::
			Send, {ALTDOWN}{F4}{ALTUP}
		Return
	#IfWinActive
;°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
;Aizver RegexTetseri ar peles malas pogu uz leju
	#IfWinActive, RegexTest
		XButton2::
			Send, {ALTDOWN}{F4}{ALTUP}
		Return
	#IfWinActive

;°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
;Ieraksta XPATH vardus paplashinot saisinajumus:
	::d*::
	send, descendant::
	return

	::fs*::
	send, following-sibling::
	return

	::ps*::
	send, preceding-sibling::
	return

	::p*::
	send, preceding::
	return

	::f*::
	send, following::
	return

;Regex delete
	::de/::
	send,(?<delete_0>)
	return


;°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
;ieraksta šodienas datumu:
	::d/::
	shodienasdatums()
	likt = %Datums%
		Clipboard = %likt%
		CtrlV()
	return





;°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
;Paraksts ieks AF  - ieraksta Parser angepast datums un paraksts
::e/::
	shodienasdatums()
	paraksts = Parser angepasst %Datums% -A.Udris
	Clipboard = %paraksts%
	CtrlV()
Return
;°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
;parakstaas jaunaa parseri - Datums un paraksts
::j/::
	shodienasdatums()
	paraksts = %Datums% - A.Udris
	Clipboard = %paraksts%
	CtrlV()
Return
;°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
;Raksta XPATH formulu - [contains(@class,"%text%")]
#IfWinActive, XPath-Tester
	MButton::
	text = %Clipboard%
	send, [contains(@class,"%text%")]
	return
#IfWinActive
;°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
;Raksta XPATH formulu - [contains(@id,"%text%")]
#IfWinActive, XPath-Tester
	^MButton::
	text = %Clipboard%
	send, [contains(@id,"%text%")]
	return
#IfWinActive

;°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
;Iemet, iepriekš nokopetu linku iekš FireFox loga:
^!x::
	WinActivate, ahk_class MozillaWindowClass
	MouseClick left , 2090, 130, 1, 0
	Send, {CTRLDOWN}{a}{CTRLUP}
	CtrlV()
	send, {enter}
return

;°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
;Iemet, iepriekš nokopetu linku iekš FireFox loga:
^+w::
	WinActivate, ahk_class IEFrame
	MouseClick left , 2090, 130, 1, 0
	Send, {CTRLDOWN}{a}{CTRLUP}
	CtrlV()
	send, {enter}
return

;izveleejaas no SITE otro poziciju nospiezot peles rulli
#IfWinActive, ChooseSite
MButton::
	;~ MsgBox, 48, ir, tttt
	Click, 222, 273
	Sleep, 100
	Click, 530, 780
return
#IfWinActive

;konkretais ir mainaams lai atbilstu situacijai: liek testeties uz DB noradot parametrus.
#IfWinActive, AddDataRefreshRequest
x::
	;~ MsgBox, 48, ir, wou
	Send, 01

	loop 8 {
	Click, 432, 168
	}

	Click, 299, 229
	send, DEFAULT-FAST

	;~ Liek datumu uz 01.07.2016
	send, {tab}
	send, 01
	send, {Right}
	send, 07

	;Nospiez OK
	Click, 715, 350
return
#IfWinActive

#IfWinActive, Schedule?
x::
	;~ MsgBox, 48, ir, wou
	send, {enter}
return
#IfWinActive


;°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
CtrlC() {
	Send, {CTRLDOWN}{c}{CTRLUP}
}
;°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
CtrlV() {
	Send, {CTRLDOWN}{v}{CTRLUP}
}
;°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
;shodienas datuma formaats.S
shodienasdatums() {
	global
	FormatTime, Datums,, dd.MM.yyyy
}
;°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
ReloadScript() {
	Run %A_AhkPath% "%A_ScriptFullPath%"
	ExitApp
}
;°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
; ar CTRL + SPACE izveletajam logam liek palikt "on TOP"
^SPACE::  Winset, Alwaysontop, , A
