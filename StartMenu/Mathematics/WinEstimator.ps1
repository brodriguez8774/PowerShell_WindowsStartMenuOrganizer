<#
    WinEstimator
#>


# Categorize folder.
if ($categorize) {
    $SMFromPath = "WinEst 2006 PH Edition\"
    $SMToPath = "Mathematics\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
