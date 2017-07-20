<#
    Mach3
#>


# Categorize folder.
if ($categorize) {
    $SMFromPath = "Mach3\"
    $SMToPath = "Simulation\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
