<#
    Bently Geopak
#>


# Bently STAAD Pro folder.
$SMFromPath = "STAAD.Pro v8i\"
$SMToPath = "Bentley\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Categorize folder.
if ($categorize) {
    $SMFromPath = "Bentley\"
    $SMToPath = "Simulation\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}