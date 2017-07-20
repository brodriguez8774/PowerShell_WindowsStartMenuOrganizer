<#
    Visual Studio
#>


# Visual Studio 2005 folder.
$SMFromPath = "Microsoft Visual Studio 2005\"
$SMToPath = "Visual Studio\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Visual Studio 2012 folder.
$SMFromPath = "Microsoft Visual Studio 2012\"
$SMToPath = "Visual Studio\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Visual Studio 2013 folder type 1.
$SMFromPath = "Visual Studio 2013\"
$SMToPath = "Visual Studio\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Visual Studio 2013 folder type 2.
$SMFromPath = "Microsoft Visual Studio 2013\"
$SMToPath = "Visual Studio\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Visual Studio 2015 icon.
$SMFromPath = "Visual Studio 2015.lnk"
$SMToPath = "Visual Studio 2015\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Blend for Visual Studio 2015 icon.
$SMFromPath = "Blend for Visual Studio 2015.lnk"
$SMToPath = "Visual Studio 2015\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Visual Studio 2015 folder.
$SMFromPath = "Visual Studio 2015\"
$SMToPath = "Visual Studio\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Categorize folder.
if ($categorize) {
    $SMFromPath = "Visual Studio\"
    $SMToPath = "Development\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
