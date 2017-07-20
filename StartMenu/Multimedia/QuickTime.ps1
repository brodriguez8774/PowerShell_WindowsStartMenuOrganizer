<#
    QuickTime
#>


# Categorize folder.
if ($categorize) {
    $SMFromPath = "QuickTime\"
    $SMToPath = "Multimedia\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
