<#
    Ansys
#>


# Categorize folder.
if ($categorize) {
    $SMFromPath = "ANSYS 16.1\"
    $SMToPath = "Simulation\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}