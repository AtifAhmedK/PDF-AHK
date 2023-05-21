SetTitleMatchMode 2
Gui, +alwaysontop			;keeps the gui on top level
;Gui, Add, Edit , w200 vpdfname, 
Gui, Add, Button, gopenpdf default, START
Gui, show ,, scantopdf			;give name to gui for later reference
return

openpdf:
	Gui, Submit, Nohide
	source := ""
	Loop,read, <enter_text_file_path_here>
	{
			WinMinimize
			run, %A_LoopReadLine%, hide
			sleep 17000
			WinClose, ahk_exe msedge.exe
			
	}
	Guicontrol, , pdfname,	;makes the edit box blank
	sleep, 4000				;wait 4 seconds for pdf to load
	WinActivate, scantopdf	;then reactivate the gui window
return 

Exit:
GuiClose:
	ExitApp
