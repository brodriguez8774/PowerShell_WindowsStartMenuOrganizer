<#
    Organize shortcuts from a default Windows 10 install.
#>


# Windows Ease of Access Folder.
$SMFromPath = "Windows Ease of Access\"
$SMToPath = "Windows Accessories\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Windows PowerShell Folder.
$SMFromPath = "Windows PowerShell\"
$SMToPath = "Windows Administrative Tools\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Windows System Folder.
$SMFromPath = "Windows System\"
$SMToPath = "Windows Administrative Tools\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Maintenance Folder.
$SMFromPath = "Maintenance\"
$SMToPath = "Windows Administrative Tools\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Miracast View Icon.
$SMFromPath = "MiracastView.lnk"
$SMToPath = "Windows Accessories\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Print Dialog Icon.
$SMFromPath = "Print Dialog.lnk"
$SMToPath = "Windows Accessories\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Settings Icon.
$SMFromPath = "Settings.lnk"
$SMToPath = "Windows Accessories\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Remove Games Folder.
$DelPath = ($StartMenuPD + "Games\")
Invoke-Expression ($CurrentPath + "StartMenu\DF.ps1")

# Remove Microsoft Security Essentials Icon.
$DelPath = ($StartMenuPD + "Microsoft Security Essentials.lnk")
Invoke-Expression ($CurrentPath + "StartMenu\DF.ps1")


# Categorize Windows Accessories folder.
if ($categorize) {
    $SMFromPath = "Windows Accessories\"
    $SMToPath = "Utilities\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}


# Categorize Windows Administrative Tools folder.
if ($categorize) {
    $SMFromPath = "Windows Administrative Tools\"
    $SMToPath = "Utilities\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
