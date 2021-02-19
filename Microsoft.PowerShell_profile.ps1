Import-Module PSReadLine
Import-Module posh-git
Import-Module oh-my-posh

Set-Theme robbyrussell
# Set-Theme paradox
# Set-Theme qwerty

# Vim
# New-Alias -Name vi -Value 'C:\Program Files\Vim\vim82\vim.exe'
# New-Alias -Name vim -Value 'C:\Program Files\Vim\vim82\vim.exe'
# Include this if you like a vim command line experience
# Set-PSReadlineOption -EditMode vi -BellStyle None

# aliases
Set-Alias -Name ll -Value Get-ChildItem

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}


# for tab autocomplete
# Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# tab only completes the command name not its previous arguments/parameters.
# to also autocomplete the complete command with arguments from history set the below keybinding.
# Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
# Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward
