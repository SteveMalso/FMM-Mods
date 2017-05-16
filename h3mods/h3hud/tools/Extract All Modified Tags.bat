mkdir tags
set /p tagsPath=Enter modified tag.dat path: 
FOR %%f IN (..\tags\*) DO (echo extract %%~nf tags\%%~nf.tag full >> "extractScript.cmds")
FOR %%f IN (..\scripts\autogenerated\*) DO (call :tagIndex %%~nf)
)
FOR %%f IN (..\scripts\manual\*) DO (call :tagIndex %%~nf)
Type "extractScript.cmds" | "TagTool_Old.exe" "%tagsPath%"
del "extractScript.cmds"
FOR %%f IN (..\scripts\autogenerated) DO (del %%f)
FOR %%f IN (..\tags\*) DO (del %%f)
FOR %%f IN (..\tags\*) DO (del %%f)
FOR %%f IN (tags\*.tag) DO (move %%f ..\tags\)
pause
exit

:tagIndex
set tagName=%*
set tagName=%tagName:0x=%
echo extract %tagName% tags\%tagName%.tag full >> "extractScript.cmds"