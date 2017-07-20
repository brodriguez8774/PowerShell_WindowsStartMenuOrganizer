<#
    Windows Kits.
#>

# Microsoft Expression folder.
$SMFromPath = "Microsoft Expression\"
$SMToPath = "Windows Kits\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Microsoft Silverlight 5 SDK folder.
$SMFromPath = "Microsoft Silverlight 5 SDK\"
$SMToPath = "Windows Kits\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Windows Phone SDK 8.0 folder.
$SMFromPath = "Windows Phone SDK 8.0\"
$SMToPath = "Windows Kits\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Windows Phone SDK 8.1 folder.
$SMFromPath = "Windows Phone SDK 8.1\"
$SMToPath = "Windows Kits\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Categorize folder.
if ($categorize) {
    $SMFromPath = "Windows Kits\"
    $SMToPath = "Development\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
