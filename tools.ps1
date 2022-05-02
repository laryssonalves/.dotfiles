#Requires -RunAsAdministrator
$ErrorActionPreference = "stop"

# Installs PSModules
Install-Module -Name PSReadLine -Force
Install-Module -Name z -Force

# Installing chocolotay package manager
Write-Output "Installing -> chocolatey"
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

Write-Output "Installing -> vscode oh-my-posh"
choco install vscode -y
choco install oh-my-posh -y
choco install googlechrome -y
choco install whatsapp -y
choco install notion -y
choco install discord.install -y
choco install slack -y

Write-Output "Setting -> wsl"
wsl --install
wsl set-default-version 2
wsl --update

Write-Output ""
wsl --install -d Ubuntu
exit
