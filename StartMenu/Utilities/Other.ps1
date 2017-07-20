<#
    Misc development-related folders.
#>


# Apple Update shortcut.
$SMFromPath = "Apple Software Update.lnk"
$SMToPath = "Apple"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Categorize Campus VPN folder.
if ($categorize) {
    $SMFromPath = "Juniper Networks\"
    $SMToPath = "Simulation\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}


# Categorize Apple folder.
if ($categorize) {
    $SMFromPath = "Apple Software Update.lnk"
    $SMToPath = "Apple"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
