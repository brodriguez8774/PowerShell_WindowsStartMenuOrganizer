<#
    ICE
#>


# ICE folder.
$SMFromPath = "MC² Software\ICE"
$SMToPath = "ICE\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# ICE Estimating Icon.
$SMFromPath = "ICE Estimating.lnk"
$SMToPath = "ICE\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Remove MC2 Folder.
$DelPath = ($StartMenuPD + "MC² Software\")
Invoke-Expression ($CurrentPath + "StartMenu\DFS.ps1")


# Categorize folder.
if ($categorize) {
    $SMFromPath = "ICE\"
    $SMToPath = "Simulation\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
