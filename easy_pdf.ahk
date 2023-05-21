SetTitleMatchMode 2
Gui, +alwaysontop			;keeps the gui on top level
;Gui, Add, Edit , w200 vpdfname, 
Gui, Add, Button, gopenpdf default, START
Gui, show ,, scantopdf			;give name to gui for later reference
return

openpdf:
	Gui, Submit, Nohide
	source := ""
	Loop,read, C:\Users\atif\Desktop\Internship IISc\New_PFT_trial\pft_list1.txt
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