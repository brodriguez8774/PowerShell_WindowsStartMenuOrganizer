<#
    Vico Office
#>


# Categorize folder.
if ($categorize) {
    $SMFromPath = "Vico Software\"
    $SMToPath = "Simulation\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
