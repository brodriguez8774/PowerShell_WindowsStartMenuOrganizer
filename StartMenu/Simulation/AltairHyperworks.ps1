<#
    Altair HyperWorks
#>

# Hyperworks 14.0 folder.
$SMFromPath = "Altair HyperWorks 14.0 (64-bit)\"
$SMToPath = "Altair HyperWorks\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Hyperworks 12.0 folder.
$SMFromPath = "Altair HyperWorks 12.0 (64-bit)\"
$SMToPath = "Altair HyperWorks\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Categorize folder.
if ($categorize) {
    $SMFromPath = "Altair HyperWorks\"
    $SMToPath = "Simulation\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
