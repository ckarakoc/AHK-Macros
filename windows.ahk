#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#f::
	Run firefox.exe
	WinWait Mozilla Firefox
	WinActivate
	Return

#+f::
	Run firefox.exe -private
	Return

#c::
	Run chrome.exe
	Return

#+c::
	Run chrome.exe -incognito
	Return

#n::
	Run notepad++.exe
	Return
	
#m::
	Run Mailbird.exe
	Return
	
#t::
	IfWinActive, ahk_class CabinetWClass ; If explorer is active
	{
		path := GetActiveExplorerPath()
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