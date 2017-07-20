<#
    Romax
#>


# Categorize folder.
if ($categorize) {
    $SMFromPath = "Romax Software\"
    $SMToPath = "Simulation\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
