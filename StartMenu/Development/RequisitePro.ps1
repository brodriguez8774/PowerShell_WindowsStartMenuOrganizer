<#
    Requisite Pro
#>


# Categorize folder.
if ($categorize) {
    $SMFromPath = "Requisite Pro\"
    $SMToPath = "Development\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
