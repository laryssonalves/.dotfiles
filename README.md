# .dotfiles
This repository holds my automatic initial setup for Windows/Linux environment

# Linux
To setup all dev environment run the following command on your bash terminal
```bash
wget https://raw.githubusercontent.com/laryssonalves/.dotfiles/master/dev.sh && bash ./dev.sh
```

# Windows
First, before running the next command you need to bypass ExecutionPolicy
```powershell
Set-ExecutionPolicy Bypass
```
To install windows tools run the following commands on your PowerShell
```powershell
iwr -useb https://raw.githubusercontent.com/laryssonalves/.dotfiles/master/tools.ps1 | iex
```
