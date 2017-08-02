#SingleInstance force

	removetooltip:
	settimer, removetooltip, off
	ToolTip

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

	::a*::
	send, ancestor::
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

;~ Pieraksta -ADV aiz RSS ja nokopets teksts kas sakas ar RSS
;°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
^w::
rss = %Clipboard%

RegexMatch(RSS,"(RSS)\ (.*)",rss_adv) ;
Clipboard = %rss_adv1%-ADV %rss_adv2%
CtrlV()
	tooltip, Klipboards: %Clipboard%, 0,0
	settimer, removetooltip, 5000
return


;*******************************************
#IfWinActive, ahk_exe Ssms.exe
^u::
rss = %Clipboard%
Sleep, 100
RegexMatch(RSS,"(RSS)\ (.*)",rss_adv) ;
vajag = %rss_adv1%-ADV %rss_adv2%
Clipboard = update source set SourceTitle='%rss_adv1%-ADV %rss_adv2%' where SourceTitle='%RSS%';
CtrlV()
Send,{down}
Send,{ShiftDown}{UP}{ShiftUp}
Send,{f5}
Sleep, 150
send, {left}{down}

Clipboard = %vajag%
	tooltip, Klipboards: %vajag%, 0,0
	settimer, removetooltip, 5000

return
#IfWinActive

;*******************************************


;~ top autoregex writer
#IfWinActive, RegexTest
^t::

WinActivate
DetectHiddenText, on
MouseClick left , 1300, 430, 1, 0
SetTitleMatchMode Slow
WinGetText iegust_datumu
RegexMatch(iegust_datumu,"\d{1,2}. \w+ \d{4}",musturs)
;~ RegexMatch(iegust_autonr,"([A-Za-zÜüÖöÄä]{1,3}[-]{1}[A-Za-zÜüÖöÄä]{1,3} \d{1,4}|[A-Za-zÜüÖöÄä]{2,3}[-]{1}\d{5})",autonr) ;atpazist ari bb-12345
Clipboard = %musturs%

msgBox, %musturs%

;~ rss = %Clipboard%

;~ RegexMatch(RSS,"(RSS)\ (.*)",rss_adv) ;  atpazist tikai parastos auto numurus aa-bb 1234
;~ Clipboard = %rss_adv1%-ADV %rss_adv2%
;~ CtrlV()
return
#IfWinActive


;°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
;Paraksts ieks AF  - ieraksta Parser angepast datums un paraksts
::e/::
	shodienasdatums()
	paraksts = Parser angepasst %Datums% -A.Udris
	Clipboard = %paraksts%
	CtrlV()
Return
;°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°

;Paraksts ieks AF  - ieraksta Parser angepast datums un paraksts
::a/::
	Send, -ADV
Return
;°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
;Paraksts ieks AF  - ieraksta Parser angepast datums un paraksts
::s/::
	Send, DEFAULT
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

^+q::
	WinActivate, B.I.G. Screen Analyst Frontend - [Parser]
	MouseClick left , 380, 143, 1, 0
	CtrlA()
	Sleep, 500
	CtrlV()
	MouseClick left , 540, 143, 1, 0
	;~ send, {enter}

return

;°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
;Iemet, iepriekš nokopetu linku iekš FireFox loga:
^+w::
	WinActivate, ahk_class IEFrame
	MouseClick left , 859, 85, 1, 0
	Send, {CTRLDOWN}{a}{CTRLUP}
	CtrlV()
	send, {enter}
return

;izveleejaas no SITE otro poziciju nospiezot peles rulli
#IfWinActive, ChooseSite
MButton::
	;~ MsgBox, 48, ir, tttt
loop 560 {
	Click, 222, 273
	Sleep, 500
	Click, 530, 780
	Sleep 1000
}
return
#IfWinActive

;konkretais ir mainaams lai atbilstu situacijai: liek testeties uz DB noradot parametrus.
#IfWinActive, AddDataRefreshRequest
x::
	;~ MsgBox, 48, ir, wou
	Send, 01

	loop 6 {
	Click, 432, 168
	}

	Click, 299, 229
	send, RSS-ADV

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
CtrlA() {
	Send, {CTRLDOWN}{a}{CTRLUP}
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
