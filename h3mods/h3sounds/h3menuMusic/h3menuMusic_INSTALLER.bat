@ECHO OFF
ECHO Installing ...

color 0A

if exist ..\..\..\..\..\maps\tags.dat (
	GOTO Label0
) else (
	GOTO Label1
)

:Label0

Type h3menuMusic.cmds | TagTool.exe ../../../../../maps/tags.dat

ECHO Installation Complete ...

pause
CLEAR
GOTO End

:Label1
ECHO WARNING this mod is not in the correct location.
ECHO It should be: Halo/mods/tagMods/h3mods/h3sounds/h3menuMusic
ECHO Windows blocks mods to install if the game is in Program Files.
ECHO If it doesn't work, just send the log to reddit/users/dany5639.
pause