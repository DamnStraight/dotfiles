# Fast Node Manager
fnm env --use-on-cd | Out-String | Invoke-Expression

# Zoxide
Invoke-Expression (& { (zoxide init powershell | Out-String) })