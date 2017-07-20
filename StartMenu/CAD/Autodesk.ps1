<#
    AutoDesk Applications.
#>

################################################
#### Start Really Annoying Windows 10 Setup ####
################################################

# 2017 folder.
$SMFromPath = "AutoCAD 2017 - English"
$SMToPath = "AutoDesk\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")

# 2017 Architecture folder.
$SMFromPath = "AutoCAD Architecture 2017 - English"
$SMToPath = "AutoDesk\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# 2017 Electrical folder.
$SMFromPath = "AutoCAD Electrical 2017 - English"
$SMToPath = "AutoDesk\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# 2017 Map 3D folder.
$SMFromPath = "AutoCAD Map 3D 2017 - English"
$SMToPath = "AutoDesk\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# 2017 Mechanical folder.
$SMFromPath = "AutoCAD Mechanical 2017 - English"
$SMToPath = "AutoDesk\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# 2017 MEP folder.
$SMFromPath = "AutoCAD MEP 2017 - English"
$SMToPath = "AutoDesk\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# 2017 Plant 3D folder.
$SMFromPath = "AutoCAD Plant 3D 2017 - English"
$SMToPath = "AutoDesk\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# 2017 Utility Design folder.
$SMFromPath = "AutoCAD Utility Design 2017 - English"
$SMToPath = "AutoDesk\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# 2017 Civil 3D folder.
$SMFromPath = "Autodesk AutoCAD Civil 3D 2017 - English"
$SMToPath = "AutoDesk\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# 2017 Backburner folder.
$SMFromPath = "Autodesk Backburner 2017.0"
$SMToPath = "AutoDesk\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Data Management folder.
$SMFromPath = "Autodesk Data Management"
$SMToPath = "AutoDesk\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# 2017 Inventor folder.
$SMFromPath = "Autodesk Inventor 2017"
$SMToPath = "AutoDesk\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Recap 360 folder.
$SMFromPath = "Autodesk ReCap 360"
$SMToPath = "AutoDesk\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Robot Analysis folder.
$SMFromPath = "Autodesk Robot Structural Analysis Professional 2017"
$SMToPath = "AutoDesk\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# 2017 Showcase folder.
$SMFromPath = "Autodesk Showcase 2017 64-bit"
$SMToPath = "AutoDesk\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# 2017 DWG folder.
$SMFromPath = "DWG TrueView 2017 - English"
$SMToPath = "AutoDesk\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# 2017 Product Design folder.
$SMFromPath = "Product Design Suite 2017"
$SMToPath = "AutoDesk\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


##############################################
#### End Really Annoying Windows 10 Setup ####
##############################################


# Categorize folder.
if ($categorize) {
    $SMFromPath = "Autodesk\"
    $SMToPath = "CAD\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
