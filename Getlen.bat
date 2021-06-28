@echo off
Setlocal EnableDelayedExpansion


Set ver=2.0


set len=0


IF /i "%~1" == "" (Goto :End)
IF /i "%~1" == "/h" (Goto :Help)
IF /i "%~1" == "/?" (Goto :Help)
IF /i "%~1" == "-h" (Goto :Help)
IF /i "%~1" == "Help" (Goto :Help)
IF /i "%~1" == "" (Echo.%ver% && Goto :EOF)

:Main
set "s=%~1#"
for %%P in (4096 2048 1024 512 256 128 64 32 16 8 4 2 1) do (
    if "!s:~%%P,1!" NEQ "" ( 
        set /a "len+=%%P"
        set "s=!s:~%%P!"
    )
)

:End
Endlocal && Exit /b %len%

:Help
Echo.
Echo. Calculates the Length of The Given String.
Echo.
Echo. Syntax: Call Getlen [String]
Echo. Where
Echo.
Echo. String:	It is the String, Whose length to be calculated.
Echo.
Echo. The length of the string is Returned in to the Main fucntion through the
Echo. Environmental Errorlevel variable.
Echo.
Echo. Try these lines in a Batch file: [E.g.]
Echo.
Echo. Call Getlen "Karan Veer Chouhan"
Echo. Echo. %%Errorlevel%%
Echo.
ECHo. #TheBATeam
Goto :End