@echo off
set resetServer=false
set input=n
set /p input=Would you like to reset the server?
if /I %input%==y set resetServer=true
if /I %input%==yes set resetServer=true
if /I %resetServer%==true (
    if exist cache\ rmdir /Q /S cache
    if exist libraries\ rmdir /Q /S libraries
    if exist logs\ rmdir /Q /S logs
    if exist versions\ rmdir /Q /S versions
    if exist worlds\ rmdir /Q /S worlds
    if exist .console_history del .console_history
    if exist usercache.json del usercache.json
    if exist version_history.json del version_history.json
    echo The server has been reset.)
pause