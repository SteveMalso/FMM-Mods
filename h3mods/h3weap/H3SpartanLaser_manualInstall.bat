color 0A

Type commands\genLastTag.cmds | TagTool.exe ../../../../maps/tags.dat
timeout 1

START /WAIT commands\TTCC.exe commands\h3SPL.cmdX

MOVE ..\..\..\..\maps\resources.dat resources.dat
Type commands\h3SPL.cmds | TagTool.exe ../../../../maps/tags.dat
MOVE resources.dat ..\..\..\..\maps\resources.dat

pause