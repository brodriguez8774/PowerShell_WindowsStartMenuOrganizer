<#
    Catia
#>


# Categorize folder.
if ($categorize) {
    $SMFromPath = "CATIA\"
    $SMToPath = "CAD\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
