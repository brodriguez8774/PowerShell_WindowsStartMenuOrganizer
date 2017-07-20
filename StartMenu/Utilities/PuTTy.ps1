<#
    PuTTy
#>


# Categorize folder.
if ($categorize) {
    $SMFromPath = "PuTTY\"
    $SMToPath = "Utilities\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
