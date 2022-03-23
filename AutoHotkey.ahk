F12:: ; Set equalizer to normal bass level
 FileDelete, C:\Program Files\EqualizerAPO\config\config.txt
 FileAppend, Include: C:\Program Files\EqualizerAPO\config\normalbass.txt, C:\Program Files\EqualizerAPO\config\config.txt
return
F11:: ; Set equalizer to middle bass level
 FileDelete, C:\Program Files\EqualizerAPO\config\config.txt
 FileAppend, Include: C:\Program Files\EqualizerAPO\config\middlebass.txt, C:\Program Files\EqualizerAPO\config\config.txt
return
F10:: ; Set equalizer to none bass level
 FileDelete, C:\Program Files\EqualizerAPO\config\config.txt
 FileAppend, Include: C:\Program Files\EqualizerAPO\config\nobass.txt, C:\Program Files\EqualizerAPO\config\config.txt
return

F2::GoSub,MousePosition ; XY pos tooltip

MousePosition:
Coordmode,Tooltip,Relative
Coordmode,Mouse,Screen
MouseGetPos,X,Y
Tooltip, Current Mouse Position: %X%`,%Y%
Clipboard= %X%`,%Y%
SetTimer,ClearToolTip, 10000
Return

ClearToolTip:
SetTimer,ClearToolTip,Off
ToolTip,
Return

F9:: ; Mute active window
Run, D:\Softs\NirCMD\nircmd.lnk
return

^SPACE:: ; Set active application on top
Winset, Alwaysontop, , A
return
