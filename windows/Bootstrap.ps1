Disable-UAC 
Set-ExecutionPolicy RemoteSigned -Force

Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowProtectedOSFiles -EnableShowFileExtensions

Disable-BingSearch
Disable-GameBarTips

Update-ExecutionPolicy Unrestricted 

Restart-Computer

cinst Microsoft-Hyper-V-All -source windowsFeatures

# .NET 4.8
choco install dotnetfx
if (Test-PendingReboot) { 
    Invoke-Reboot 
}

choco install vcredist140
if (Test-PendingReboot) { 
    Invoke-Reboot 
}

choco install nodejs-lts
choco install python
choco install adoptopenjdk8
choco install golang

choco install git --params /WindowsTerminal /NoGuiHereIntegration
choco install cmder
choco install vscode --params /NoDesktopIcon /NoContextMenuFolders 

choco install yarn
choco install 7zip

choco install streamlink
choco install streamlink-twitch-gui
choco install musicbee
choco install brave
choco install discord
choco install keepassxc
choco install sharex
choco install vlc
choco install firefox
choco install qbittorrent
choco install pia
choco install logitechgaming
choco install sumatrapdf
choco install imageglass
choco install steam
choco install docker-desktop
choco install slack
choco install f.lux

choco install youtube-dl


#-- Uninstall preinstalled shit

# Get rid of all preinstalled windows apps
Get-AppxPackage -AllUsers | where-object {$_.name –notlike "*store*"} | Remove-AppxPackag

# Don't let apps use my advertising ID
If (-Not (Test-Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo")) {
    New-Item -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo | Out-Null
}
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo -Name Enabled -Type DWord -Value 0

# These make "Quick Access" behave much closer to the old "Favorites"
# Disable Quick Access: Recent Files
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer -Name ShowRecent -Type DWord -Value 0
# Disable Quick Access: Frequent Folders
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer -Name ShowFrequent -Type DWord -Value 0
# To Restore:
# Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer -Name ShowRecent -Type DWord -Value 1
# Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer -Name ShowFrequent -Type DWord -Value 1

# Turn off People in Taskbar
If (-Not (Test-Path "HKCU:SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People")) {
    New-Item -Path HKCU:SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People | Out-Null
}
Set-ItemProperty -Path "HKCU:SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People" -Name PeopleBand -Type DWord -Value 0

Enable-UAC