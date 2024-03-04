@echo off

rem Copy nvim config
xcopy /E /I config\nvim\* %LOCALAPPDATA%\nvim\
