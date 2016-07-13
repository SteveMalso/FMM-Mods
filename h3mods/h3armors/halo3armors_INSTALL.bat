@ECHO OFF
color 0A
if exist ..\..\..\..\maps\tags.dat (
	GOTO Label0
) else (
	GOTO Label1
)

:Label0
ECHO Correct folder location. Installing...
MOVE ..\..\..\..\maps\resources.dat resources.dat
Type commands\h3armors.cmds | TagTool.exe ../../../../maps/tags.dat
MOVE resources.dat ..\..\..\..\maps\resources.dat

del tempTag

CLS
@ECHO INSTALLATION COMPLETE.
@ECHO OFF
pause
GOTO End

:Label1
CLS
@ECHO WARNING mod is not in the correct location.
@ECHO It should be: Halo/mods/tagMods/h3mods/h3armors/
@ECHO You may also try to move the whole game folder elsewhere.
@ECHO OFF
pause
GOTO End