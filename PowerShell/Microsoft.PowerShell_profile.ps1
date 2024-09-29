# Aliases
New-Alias gdl gallery-dl

# Zoxide
Invoke-Expression (& { (zoxide init powershell | Out-String) })

# Starship
Invoke-Expression (&starship init powershell)