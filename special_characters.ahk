#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; LOWERCASE LETTERS

!c::
	SendInput {ç}
	Return

!g::
	SendInput {ğ}
	Return

!i::
	SendInput {ı}
	Return

!o::
	SendInput {ö}
	Return

!s::
	SendInput {ş}
	Return

!u::
	SendInput {ü}
	Return

; ------------------------------------------------------------------------------------------------------------
; UPPERCASE LETTERS

!+c::
	SendInput {Ç}
	Return

!+g::
	SendInput {Ğ}
	Return

!+i::
	SendInput {İ}
	Return

!+o::
	SendInput {Ö}
	Return

!+s::
	SendInput {Ş}
	Return

!+u::
	SendInput {Ü}
	Return

; ------------------------------------------------------------------------------------------------------------
; SYMBOLS
!5::
	SendInput {€}
	Return
