<#
    Gimp
#>


# Moving a shortcut.
$SMFromPath = "GIMP 2.lnk"
$SMToPath = "Gimp\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Categorize folder.
if ($categorize) {
    $SMFromPath = "Gimp\"
    $SMToPath = "Multimedia\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
