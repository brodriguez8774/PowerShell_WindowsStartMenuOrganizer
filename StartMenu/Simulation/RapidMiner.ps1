<#
    Rapid Miner
#>


# Categorize folder.
if ($categorize) {
    $SMFromPath = "RapidMiner Studio\"
    $SMToPath = "Simulation\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
