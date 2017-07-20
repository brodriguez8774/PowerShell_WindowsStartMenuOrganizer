<#
    Aspen Plus
#>


# aspenONE SLM License Manager icon.
$SMFromPath = "aspenONE SLM License Manager.lnk"
$SMToPath = "AspenTech\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Aspen Configuration folder.
$SMFromPath = "Aspen Configuration\"
$SMToPath = "AspenTech\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Aspen Economic Evaluation folder.
$SMFromPath = "Aspen Economic Evaluation\"
$SMToPath = "AspenTech\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Aspen EDR folder.
$SMFromPath = "Aspen EDR\"
$SMToPath = "AspenTech\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Aspen Engineering Tools folder.
$SMFromPath = "Aspen Engineering Tools\"
$SMToPath = "AspenTech\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Aspen HYSYS folder.
$SMFromPath = "Aspen HYSYS\"
$SMToPath = "AspenTech\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Aspen Manufacturing Execution folder.
$SMFromPath = "Aspen Manufacturing Execution\"
$SMToPath = "AspenTech\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Aspen Plus folder.
$SMFromPath = "Aspen Plus\"
$SMToPath = "AspenTech\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Aspen Properties folder.
$SMFromPath = "Aspen Properties\"
$SMToPath = "AspenTech\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Categorize folder.
if ($categorize) {
    $SMFromPath = "AspenTech\"
    $SMToPath = "Simulation\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
