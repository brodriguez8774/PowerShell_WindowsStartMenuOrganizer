<#
    InventorCam
#>


# Categorize folder.
if ($categorize) {
    $SMFromPath = "InventorCAM2015\"
    $SMToPath = "CAD\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
