<#
    ArcGis
#>


# Categorize folder.
if ($categorize) {
    $SMFromPath = "ArcGIS\"
    $SMToPath = "CAD\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
