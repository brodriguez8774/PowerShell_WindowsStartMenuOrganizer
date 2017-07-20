<#
    Oracle Virtual Box
#>


# Categorize folder.
if ($categorize) {
    $SMFromPath = "Oracle VM VirtualBox Guest Additions\"
    $SMToPath = "Simulation\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
