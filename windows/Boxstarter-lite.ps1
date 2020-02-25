# Description: Boxstarter Script
# Gist modified from https://gist.github.com/bitcrazed/c788f9dcf1d630340a19

#---- TEMPORARY ---
Disable-UAC
  
#--- Used to uninstall unwanted default apps ---
function Remove-App 
{	
    Param ([string]$appName)
    
    Write-Output "Trying to remove $appName"
    
    Get-AppxPackage $appName -AllUsers | Remove-AppxPackage
    
    Get-AppXProvisionedPackage -Online | Where-Object DisplayNam -like $appName | Remove-AppxProvisionedPackage -Online
}
        
#--- Uninstall unwanted default apps ---
$applicationList = @(	
    "Microsoft.3DBuilder"
    "Microsoft.CommsPhone"
    "Microsoft.Getstarted"
    "*MarchofEmpires*"
    "Microsoft.GetHelp"
    "Microsoft.Messaging"
    "*Minecraft*"
    "Microsoft.MicrosoftOfficeHub"
    "Microsoft.WindowsPhone"
    "*Solitaire*"
    "Microsoft.MicrosoftStickyNotes"
    "Microsoft.Office.Sway"
    "Microsoft.XboxApp"
    "Microsoft.XboxIdentityProvider"
    "Microsoft.NetworkSpeedTest"
    "Microsoft.Print3D"

    #Non-Microsoft
    "*Autodesk*"
    "*BubbleWitch*"
    "king.com.CandyCrush*"
    "*Dell*"
    "*Dropbox*"
    "*Facebook*"
    "*Keeper*"
    "*Plex*"
    "*.Duolingo-LearnLanguagesforFree"
    "*.EclipseManager"
    "ActiproSoftwareLLC.562882FEEB491" # Code Writer
    "*.AdobePhotoshopExpress");

foreach ($app in $applicationList) {
    Remove-App $app
}

#--- Windows Features ---
    Set-WindowsExplorerOptions -EnableShowFileExtensions ### -EnableShowHiddenFilesFoldersDrives -EnableShowProtectedOSFiles
    Set-ItemProperty -Path HKLM:\Software\Microsoft\Windows\CurrentVersion\AppModelUnlock -Name AllowDevelopmentWithoutDevLicense -Value 1
    Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name NavPaneExpandToCurrentFolder -Value 1
    Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name NavPaneShowAllFolders -Value 1
    Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name LaunchTo -Value 1
    Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name MMTaskbarMode -Value 2

    Enable-RemoteDesktop

#--- PowerShell utilities
    Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force -y
    Install-Module DirColors
    Install-Module posh-git

#--- Install Windows features
    choco install -y Microsoft-Hyper-V-All -source windowsFeatures
    choco install -y Microsoft-Windows-Subsystem-Linux -source WindowsFeatures 
  
#--- Install Git ---
    choco install git -params '"/WindowsTerminal /NoGuiHereIntegration /GitAndUnixToolsOnPath"'
    RefreshEnv # Refresh env due to Git install

#--- Programming Languages ---
    choco install nodejs-lts
    choco install python
    choco install adoptopenjdk8
    choco install golang

#--- Tools ---
    choco install microsoft-windows-terminal
    choco install cmder
    choco install vscode --params /NoDesktopIcon /NoContextMenuFolders 
    choco install yarn
    choco install 7zip
    choco install docker-desktop
    choco install sharex
    choco install keepassxc
    choco install imageglass
    choco install qbittorrent
    choco install f.lux
    choco install pia

#--- Botnet ---
    choco install discord
    choco install steam

#--- Media ---
    choco install streamlink
    choco install streamlink-twitch-gui
    choco install musicbee
    choco install vlc
    choco install brave
    choco install firefox
    choco install sumatrapdf


#--- Restore Temporary Settings ---
Enable-UAC
Enable-MicrosoftUpdate
Install-WindowsUpdate -acceptEula