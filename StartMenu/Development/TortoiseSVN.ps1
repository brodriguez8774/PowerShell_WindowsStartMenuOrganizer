<#
    Tortoise SVN
#>


# Categorize folder.
if ($categorize) {
    $SMFromPath = "TortoiseSVN\"
    $SMToPath = "Development\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
