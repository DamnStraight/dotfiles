# mpv
Copy-Item -Path ".\.config\mpv" `
    -Destination $env:APPDATA `
    -Recurse `
    -Force

# PowerShell
Copy-Item -Path ".\PowerShell" `
    -Destination "$($env:UserProfile)\Documents\" `
    -Recurse `
    -Force

# GlazeWM
Copy-Item -Path ".\.glzr" `
    -Destination "$($env:UserProfile)\Documents\" `
    -Recurse `
    -Force

# VSCode
Copy-Item -Path ".\vscode\settings.json" `
    -Destination "$($env:APPDATA)\Roaming\Code\User" `
    -Recurse `
    -Force

# Windows Terminal
$BaseDir = "$($env:LOCALAPPDATA)\Packages\"
$WindowsTerminalFolder = Get-ChildItem $BaseDir `
    -Directory `
    | Where-Object { $_.Name.StartsWith(("Microsoft.WindowsTerminal")) }

Copy-Item -Path ".\windows-terminal\settings.json" `
    -Destination "$($env:LOCALAPPDATA)$($WindowsTerminalFolder)" `
    -Recurse `
    -Force

pause