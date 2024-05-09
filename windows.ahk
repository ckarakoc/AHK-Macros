#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#b::
	Run "C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe"
	WinWait, Brave,, 3
	if WinExist("Brave")
		WinActivate
	Return

#+b::
	Run "C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe" --incognito
	WinWait, Brave,, 3
	if WinExist("Brave")
		WinActivate
	Return

#f::
	Run firefox.exe
	WinWait, Mozilla Firefox,, 3
	if WinExist("Mozilla Firefox")
		WinActivate
	Return

#+f::
	Run firefox.exe -private
	WinWait, Mozilla Firefox,, 3
	if WinExist("Mozilla Firefox")
		WinActivate
	Return

#c::
	Run chrome.exe
	WinWait, New Tab - Google Chrome,, 3
	if WinExist("New Tab - Google Chrome")
		WinActivate
	Return

#+c::
	Run chrome.exe - incognito
	WinWait, New Tab - Google Chrome,, 3
	if WinExist("New Tab - Google Chrome")
		WinActivate
	Return

#n::
	Run notepad++.exe
	Return
	
#m::
	Run "C:\Program Files\Mailbird\Mailbird.exe"
	Return
	
#t::
	IfWinActive, ahk_class CabinetWClass ; If explorer is active
	{
		path := GetActiveExplorerPath()
		if (SubStr(path, 0) == "\") ; get last character
			path .= "\" ; escape "\" 
		path := StrReplace(path, ";", "\;") ; semicolon needs to be escaped
		Run wt.exe -d "%path%"
	}
	else 
	{
		Run wt.exe
	}
	Return
	

; https://www.autohotkey.com/boards/viewtopic.php?f=6&t=69925 | source: https://stackoverflow.com/questions/39253268/autohotkey-and-windows-10-how-to-get-current-explorer-path
GetActiveExplorerPath() {
    explorerHwnd := WinActive("ahk_class CabinetWClass")
    if (explorerHwnd)
    {
        for window in ComObjCreate("Shell.Application").Windows
        {
            if (window.hwnd==explorerHwnd)
                return window.Document.Folder.Self.Path
        }
    }
}