<#
    Quark Express
#>


# Categorize folder.
if ($categorize) {
    $SMFromPath = "QuarkXPress 2016\"
    $SMToPath = "Development\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
