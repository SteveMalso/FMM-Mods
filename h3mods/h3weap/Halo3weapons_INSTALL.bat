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
Type commands\h3weap.cmds | TagTool.exe ../../../../maps/tags.dat
MOVE resources.dat ..\..\..\..\maps\resources.dat

ECHO Installing textures, this is very slow for now, please wait...
Type commands\h3weapIndex.cmds | TagTool.exe ../../../../maps/tags.dat

del tempTag

pause

GOTO End

:Label1
@ECHO WARNING this mod is not in the correct location.
@ECHO It should be: Halo/mods/tagMods/h3mods/h3weap/
@ECHO Windows blocks mods to install if the game is in Program Files.
@ECHO If it doesn't work, just poke reddit/users/dany5639.
pause