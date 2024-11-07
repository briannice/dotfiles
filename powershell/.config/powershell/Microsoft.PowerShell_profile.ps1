# Set module path
$env:PSModulePath += ":$HOME/.config/powershell/Modules"

# Load catppuccin
Import-Module Catppuccin
$Flavor = $Catppuccin['Macchiato']

function prompt {
    $(if (Test-Path variable:/PSDebugContext) { "$($Flavor.Red.Foreground())[DBG]: " }
        else { '' }) + "$($Flavor.Teal.Foreground())PS $($Flavor.Yellow.Foreground())" + $(Get-Location) +
    "$($Flavor.Green.Foreground())" + $(if ($NestedPromptLevel -ge 1) { '>>' }) + '> ' + $($PSStyle.Reset)
}

# Load starhip
Invoke-Expression (&starship init powershell)