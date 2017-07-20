<#
    Deep Freeze
#>


# Categorize folder.
if ($categorize) {
    $SMFromPath = "Faronics\"
    $SMToPath = "Simulation\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
