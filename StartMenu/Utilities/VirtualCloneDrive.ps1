<#
    Virtual Clone Drive
#>

# Moving a folder.
$SMFromPath = "Elaborate Bytes\VirtualCloneDrive"
$SMToPath = ""
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Delete Elaborate Bytes folder.
$DelPath = ($StartMenuPD + "Elaborate Bytes\")
Invoke-Expression ($CurrentPath + "StartMenu/DFS.ps1")


# Categorize folder.
if ($categorize) {
    $SMFromPath = "VirtualCloneDrive\"
    $SMToPath = "Utilities\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
