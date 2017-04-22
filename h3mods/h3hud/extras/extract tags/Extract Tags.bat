FOR %%f IN (..\..\scripts\*.cmds) DO (echo extracttag %%~nf tags\%%~nf.tag >> "extractScript.cmds")
Type "extractScript.cmds")| "h3h_TagTool.exe" "..\..\..\..\..\..\maps/tags.dat"
del "extractScript.cmds")
pause