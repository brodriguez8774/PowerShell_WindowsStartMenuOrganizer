<#
    HEC-RAS
#>


# Moving a folder.
$SMFromPath = "HEC\HEC-RAS\"
$SMToPath = "HEC-RAS\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Remove HEC Folder.
$DelPath = ($StartMenuPD + "HEC\")
Invoke-Expression ($CurrentPath + "StartMenu\DFS.ps1")


# Categorize folder.
if ($categorize) {
    $SMFromPath = "HEC-RAS\"
    $SMToPath = "Simulation\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
