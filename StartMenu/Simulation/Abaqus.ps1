<#
    Abaqus
#>


# Abaqus Documentation folder.
$SMFromPath = "Abaqus 2016 Documentation\"
$SMToPath = "Abaqus"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Abaqus 6.14 folder.
$SMFromPath = "Abaqus 6.14-1\"
$SMToPath = "Abaqus"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Abaqus 2016 folder.
$SMFromPath = "Dassault Systemes SIMULIA Abaqus CAE 2016\"
$SMToPath = "Abaqus"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Abaqus 2016 Services folder.
$SMFromPath = "Dassault Systemes Simulation Services 3DEXPERIENCE R2016x\"
$SMToPath = "Abaqus"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Categorize folder.
if ($categorize) {
    $SMFromPath = "Abaqus\"
    $SMToPath = "Simulation\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
