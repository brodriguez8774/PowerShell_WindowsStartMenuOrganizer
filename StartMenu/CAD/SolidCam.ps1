<#
    SolidCam
#>


# Categorize folder.
if ($categorize) {
    $SMFromPath = "SolidCAM2015\"
    $SMToPath = "CAD\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
