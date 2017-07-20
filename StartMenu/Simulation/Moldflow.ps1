<#
    Moldflow
#>


# Autodesk Application folder.
$SMFromPath = "CAD\Autodesk\Autodesk Application Manager"
$SMToPath = "Autodesk\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Autodesk Application folder.
$SMFromPath = "CAD\Autodesk\Autodesk Moldflow Adviser 2017 R2"
$SMToPath = "Autodesk\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Moldflow Communicator 2016 folder.
$SMFromPath = "CAD\Autodesk\Autodesk Moldflow Communicator 2016"
$SMToPath = "Autodesk\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Moldflow Communicator 2017 folder.
$SMFromPath = "CAD\Autodesk\Autodesk Moldflow Communicator 2017 R2"
$SMToPath = "Autodesk\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Moldflow Insight folder.
$SMFromPath = "CAD\Autodesk\Autodesk Moldflow Insight 2016"
$SMToPath = "Autodesk\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# SimStudio folder.
$SMFromPath = "CAD\Autodesk\Autodesk SimStudio Tools 2016"
$SMToPath = "Autodesk\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# SimJob folder.
$SMFromPath = "CAD\Autodesk\Autodesk Simulation Job Manager"
$SMToPath = "Autodesk\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Categorize folder.
if ($categorize) {
    $SMFromPath = "Autodesk\"
    $SMToPath = "Simulation\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
