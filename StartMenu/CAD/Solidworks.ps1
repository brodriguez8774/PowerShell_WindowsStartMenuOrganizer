<#
    Solidworks
#>


# Solidworks Installation Manager folder.
$SMFromPath = "SOLIDWORKS Installation Manager\"
$SMToPath = "SOLIDWORKS 2016\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Solidworks Installation Manager folder.
$SMFromPath = "SOLIDWORKS Tools 2016\"
$SMToPath = "SOLIDWORKS 2016\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Solidworks PDM Extentsons folder.
$SMFromPath = "SOLIDWORKS PDM\"
$SMToPath = "SOLIDWORKS 2016\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Categorize folder.
if ($categorize) {
    $SMFromPath = "SOLIDWORKS 2016\"
    $SMToPath = "CAD\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
