<#
    PTC Creo
#>


# PTC folder.
$SMFromPath = "PTC\Creo Elements Pro"
$SMToPath = "PTC Creo"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")

$SMFromPath = "PTC\PTC Quality Agent.lnk"
$SMToPath = "PTC Creo"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")

$DelPath = ($StartMenuPD + "PTC")
Invoke-Expression ($CurrentPath + "StartMenu\DFS.ps1")


# ProductView Express folder.
$SMFromPath = "ProductView Express\"
$SMToPath = "PTC Creo\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# PTC MathCad folder.
$SMFromPath = "PTC Mathcad"
$SMToPath = "PTC Creo"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Categorize folder.
if ($categorize) {
    $SMFromPath = "PTC Creo\"
    $SMToPath = "CAD\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
