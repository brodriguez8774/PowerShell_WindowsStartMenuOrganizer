<#
    ProModel
#>


$SMFromPath = "ProModel Solutions\ProModel 2014\"
$SMToPath = ""
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Remove Solutions Folder.
$DelPath = ($StartMenuPD + "ProModel Solutions\")
Invoke-Expression ($CurrentPath + "StartMenu\DFS.ps1")


# Categorize folder.
if ($categorize) {
    $SMFromPath = "\ProModel 2014\"
    $SMToPath = "Simulation\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
