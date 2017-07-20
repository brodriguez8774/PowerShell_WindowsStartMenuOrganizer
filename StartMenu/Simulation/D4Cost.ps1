<#
    D4Cost
#>


# D4Cost Demo icon.
$SMFromPath = "D4COST DEMO.lnk"
$SMToPath = "D4COST\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Categorize folder.
if ($categorize) {
    $SMFromPath = "D4COST\"
    $SMToPath = "Simulation\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
