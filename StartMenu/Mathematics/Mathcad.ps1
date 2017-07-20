<#
    Mathcad
#>


# Moving a shortcut.
$SMFromPath = "Mathcad 15.lnk"
$SMToPath = "Mathcad"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Categorize folder.
if ($categorize) {
    $SMFromPath = "Mathcad\"
    $SMToPath = "Mathematics\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
