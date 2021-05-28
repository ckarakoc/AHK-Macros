#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; LOWERCASE LETTERS

!c::
{
SendInput {ç}
}
return

!g::
{
SendInput {ğ}
}
return

!i::
{
SendInput {ı}
}
return

!o::
{
SendInput {ö}
}
return

!s::
{
SendInput {ş}
}
return

!u::
{
SendInput {ü}
}
return

; ------------------------------------------------------------------------------------------------------------
; UPPERCASE LETTERS

!+c::
{
SendInput {Ç}
}
return

!+g::
{
SendInput {Ğ}
}
return

!+i::
{
SendInput {İ}
}
return

!+o::
{
SendInput {Ö}
}
return

!+s::
{
SendInput {Ş}
}
return

!+u::
{
SendInput {Ü}
}
return

