<#
    Xp Mode
#>


# Categorize folder.
if ($categorize) {
    $SMFromPath = "Windows Virtual PC\"
    $SMToPath = "Utilities\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
