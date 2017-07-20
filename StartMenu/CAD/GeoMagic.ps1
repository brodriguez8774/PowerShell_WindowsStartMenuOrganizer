<#
    GeoMagic
#>


# Geomagic Design folder.
$SMFromPath = "3D Systems\GeoMagic Design X 64\"
$SMToPath = "GeoMagic\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Geomagic Verify folder.
$SMFromPath = "3D Systems\GeoMagic Verify X 64\"
$SMToPath = "GeoMagic\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Categorize folder.
if ($categorize) {
    $SMFromPath = "GeoMagic\"
    $SMToPath = "CAD\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
