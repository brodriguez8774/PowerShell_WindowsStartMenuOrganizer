<#
    WinSCP
#>

# Moving a single shortcut.
$SMFromPath = "WinSCP.lnk"
$SMToPath = "WinSCP\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Categorize folder.
if ($categorize) {
    $SMFromPath = "WinSCP\"
    $SMToPath = "Utilities\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
