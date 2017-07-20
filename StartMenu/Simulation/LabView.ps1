<#
    LabView
#>


# JKI folder.
$SMFromPath = "JKI\"
$SMToPath = "National Instruments\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# LabView 2015 32-bit shortcut.
$SMFromPath = "NI LabVIEW 2015 SP1 (32-bit).lnk"
$SMToPath = "National Instruments\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# LabView 2015 64-bit shortcut.
$SMFromPath = "NI LabVIEW 2015 SP1 (64-bit).lnk"
$SMToPath = "National Instruments\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# LabView 2016 32-bit shortcut.
$SMFromPath = "NI LabVIEW 2016 (32-bit).lnk"
$SMToPath = "National Instruments\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# LabView 2016 64-bit shortcut.
$SMFromPath = "NI LabVIEW 2016 (64-bit).lnk"
$SMToPath = "National Instruments\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# NI Max shortcut.
$SMFromPath = "NI MAX.lnk"
$SMToPath = "National Instruments\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# VI Package Manager shortcut.
$SMFromPath = "VI Package Manager.lnk"
$SMToPath = "National Instruments\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Categorize folder.
if ($categorize) {
    $SMFromPath = "National Instruments\"
    $SMToPath = "Simulation\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
