F12::
 FileDelete, C:\Program Files\EqualizerAPO\config\config.txt
 FileAppend, Include: C:\Program Files\EqualizerAPO\config\normalbass.txt, C:\Program Files\EqualizerAPO\config\config.txt
return
F11::
 FileDelete, C:\Program Files\EqualizerAPO\config\config.txt
 FileAppend, Include: C:\Program Files\EqualizerAPO\config\middlebass.txt, C:\Program Files\EqualizerAPO\config\config.txt
return
F10::
 FileDelete, C:\Program Files\EqualizerAPO\config\config.txt
 FileAppend, Include: C:\Program Files\EqualizerAPO\config\nobass.txt, C:\Program Files\EqualizerAPO\config\config.txt
return

;F2::GoSub,MousePosition

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

; F7::
;FileDelete, C:\Users\baura\Documents\DofusPouletFlemmards\pairing.ini
;FileCopy, C:\Users\baura\Documents\DofusPouletFlemmards\Drop\pairing.ini, C:\Users\baura\Documents\DofusPouletFlemmards\pairing.ini
;Run, F:\Softs\Dofus Poulet Flemmards\DofusPouletFlemmards.exe
;return
;F8::
;FileDelete, C:\Users\baura\Documents\DofusPouletFlemmards\pairing.ini
;FileCopy, C:\Users\baura\Documents\DofusPouletFlemmards\Combat\pairing.ini, C:\Users\baura\Documents\DofusPouletFlemmards\pairing.ini
;Run, F:\Softs\Dofus Poulet Flemmards\DofusPouletFlemmards.exe
;return

F9::
Run, D:\Softs\NirCMD\nircmd.lnk
return

^SPACE::
Winset, Alwaysontop, , A
return