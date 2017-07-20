<#
    CalculiX
#>


# Categorize folder.
if ($categorize) {
    $SMFromPath = "bConverged\"
    $SMToPath = "Simulation\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
