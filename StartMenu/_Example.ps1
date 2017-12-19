<#
    Example
#>


# Moving a single shortcut.
$SMFromPath = "CurrentPathToShortcut.lnk"
$SMToPath = "DesiredDestination\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Moving a folder.
$SMFromPath = "CurrentPathToFolder\"
$SMToPath = "NewPathToFolder\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
