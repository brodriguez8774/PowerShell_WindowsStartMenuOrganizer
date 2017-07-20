<#
    SAP
#>


# Categorize SAP 2017 folder.
if ($categorize) {
    $SMFromPath = "SAP2000 17\"
    $SMToPath = "Simulation\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}


# Categorize SAP 2018 folder.
if ($categorize) {
    $SMFromPath = "SAP200018\"
    $SMToPath = "Simulation\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}