@ECHO OFF
color 0A

START /WAIT commands\TTCC.exe -in commands\BLANK.cmdX -out commands\BLANK.cmds -dat ..\..\..\maps\tags.dat

ECHO DONE
pause