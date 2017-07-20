<#
    Algor
#>

# Initial folder.
$SMFromPath = "Autodesk\Autodesk Algor Simulation 2011\"
$SMToPath = "Autodesk"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# CAD folder.
$SMFromPath = "CAD\Autodesk\Autodesk Algor Simulation 2011\"
$SMToPath = "Autodesk"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Categorize folder.
if ($categorize) {
    $SMFromPath = "Autodesk\"
    $SMToPath = "Simulation\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}