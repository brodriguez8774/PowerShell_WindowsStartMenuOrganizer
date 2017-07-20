<#
    Rational Architect.
#>


# Rational Architect 9.0 folder.
$SMFromPath = "IBM Software Delivery Platform\IBM Rational Software Architect 9.0\"
$SMToPath = "IBM Rational Architect\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Rational Architect 9.1 folder.
$SMFromPath = "IBM Software Delivery Platform\IBM Rational Software Architect RealTime Edition 9.1\"
$SMToPath = "IBM Rational Architect\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Installation Manager folder.
$SMFromPath = "IBM Installation Manager\"
$SMToPath = "IBM Rational Architect\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Delete Elaborate Bytes folder.
$DelPath = ($StartMenuPD + "IBM Software Delivery Platform\")
Invoke-Expression ($CurrentPath + "StartMenu/DFS.ps1")


# Categorize folder.
if ($categorize) {
    $SMFromPath = "IBM Rational Architect\"
    $SMToPath = "Development\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
