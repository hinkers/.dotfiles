@echo off

rem Define the packer installation path
set PACKER_INSTALL_PATH=%LOCALAPPDATA%\nvim\site\pack\packer\start\packer.nvim

rem Check if packer is installed
if not exist "%PACKER_INSTALL_PATH%" (
    echo Packer not found. Installing packer.nvim...
    git clone --depth 1 https://github.com/wbthomason/packer.nvim "%PACKER_INSTALL_PATH%"
)

rem Copy nvim config
xcopy /E /I config\nvim\* %LOCALAPPDATA%\nvim\
