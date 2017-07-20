<#
    Organize shortcuts from a default Windows 7 install.
#>


# Maintenance Folder.
$SMFromPath = "Maintenance\"
$SMToPath = "Administrative Tools\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Default Programs Icon.
$SMFromPath = "Default Programs.lnk"
$SMToPath = "Accessories\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Desktop Gadget Gallery Icon.
$SMFromPath = "Desktop Gadget Gallery.lnk"
$SMToPath = "Accessories\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Explorer Icon.
$SMFromPath = "Internet Explorer.lnk"
$SMToPath = "Internet\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Explorer 64 Icon.
$SMFromPath = "Internet Explorer (64-bit).lnk"
$SMToPath = "Internet\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Windows DVD Maker Icon.
$SMFromPath = "Windows DVD Maker.lnk"
$SMToPath = "Accessories\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Windows Fax and Scan Icon.
$SMFromPath = "Windows Fax and Scan.lnk"
$SMToPath = "Accessories\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Windows Media Center Icon.
$SMFromPath = "Windows Media Center.lnk"
$SMToPath = "Accessories\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Windows Media Player Icon.
$SMFromPath = "Windows Media Player.lnk"
$SMToPath = "Accessories\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Windows Update Icon.
$SMFromPath = "Windows Update.lnk"
$SMToPath = "Accessories\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# XPS Viewer Icon.
$SMFromPath = "XPS Viewer.lnk"
$SMToPath = "Accessories\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Remove Games Folder.
$DelPath = ($StartMenuPD + "Games\Games Explorer.lnk")
Invoke-Expression ($CurrentPath + "StartMenu\DF.ps1")
$DelPath = ($StartMenuPD + "Games\")
Invoke-Expression ($CurrentPath + "StartMenu\DF.ps1")


# Microsoft Security Essentials Icon.
$DelPath = ($StartMenuPD + "Microsoft Security Essentials.lnk")
Invoke-Expression ($CurrentPath + "StartMenu\DF.ps1")


# Categorize Accessories folder.
if ($categorize) {
    $SMFromPath = "Accessories\"
    $SMToPath = "Utilities\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}


# Categorize Administrative Tools folder.
if ($categorize) {
    $SMFromPath = "Administrative Tools\"
    $SMToPath = "Utilities\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}


# Categorize Intel folder.
if ($categorize) {
    $SMFromPath = "Intel\"
    $SMToPath = "Utilities\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
