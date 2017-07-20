<#
    Cimatron
#>


# Categorize folder.
if ($categorize) {
    $SMFromPath = "CimatronE 12.0 (64-bit)\"
    $SMToPath = "Simulation\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
