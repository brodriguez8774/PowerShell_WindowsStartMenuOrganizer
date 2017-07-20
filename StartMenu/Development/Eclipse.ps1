<#
    Eclipse
#>


# Eclipse shortcut.
$SMFromPath = "Eclipse.lnk"
$SMToPath = "Eclipse"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Categorize folder.
if ($categorize) {
    $SMFromPath = "Eclipse\"
    $SMToPath = "Development\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
