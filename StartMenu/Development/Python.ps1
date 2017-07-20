<#
    Python
#>

# Iron Python 2.7 folder.
$SMFromPath = "IronPython 2.7\"
$SMToPath = "Python\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Categorize folder.
if ($categorize) {
    $SMFromPath = "Python\"
    $SMToPath = "Development\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
