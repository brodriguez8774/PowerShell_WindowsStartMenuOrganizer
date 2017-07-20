<#
    Adams
#>

# Adams folder.
$SMFromPath = "MSC.Software\Adams x64 2012\"
$SMToPath = "Adams\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Remove MSC Folder.
$DelPath = ($StartMenuPD + "MSC.Software\")
Invoke-Expression ($CurrentPath + "StartMenu\DF.ps1")


# Categorize folder.
if ($categorize) {
    $SMFromPath = "Adams\"
    $SMToPath = "Simulation\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
