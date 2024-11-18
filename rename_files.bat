@echo off
setlocal enabledelayedexpansion

for %%f in (*texout*) do (
    :: Get the filename without extension and extension
    set "filename=%%~nf"
    set "extension=%%~xf"
    
    :: Replace texout with tex in the filename
    set "new_filename=!filename:texout=tex!!extension!"

    :: Rename the file
    ren "%%f" "!new_filename!"
)

echo Files have been renamed successfully.
pause
