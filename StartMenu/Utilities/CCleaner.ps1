<#
    CCleaner
#>


# Categorize folder.
if ($categorize) {
    $SMFromPath = "CCleaner\"
    $SMToPath = "Simulation\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
