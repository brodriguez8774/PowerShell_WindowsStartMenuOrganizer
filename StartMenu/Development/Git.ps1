<#
    Git
#>


# Categorize folder.
if ($categorize) {
    $SMFromPath = "Git\"
    $SMToPath = "Development\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
