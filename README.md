# Hinkers dotfiles

## Installation

Installation will download and isntall packer if needed.

```bash
git clone https://github.com/hinkers/.dotfiles.git && ./.dotfiles/update.sh
```

The first run of neovim will likely result in errors make sure to run PackerSync to fix these.

```
:PackerSync
```

## Windows Neovim Installation

Install [sccop](https://scoop.sh/):

```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
```

Use scoop to install neovim:

```powershell
scoop install neovim
```

Then finally apply the config:

```powershell
git clone https://github.com/hinkers/.dotfiles.git; .\.dotfiles\update.bat
```

The first run of neovim will likely result in errors make sure to run PackerSync to fix these.

```
:PackerSync
```
