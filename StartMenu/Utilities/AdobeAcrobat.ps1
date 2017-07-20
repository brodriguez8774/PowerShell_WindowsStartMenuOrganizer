<#
    Adobe Acrobat
#>


# Acrobat DC shortcut.
$SMFromPath = "Acrobat Reader DC.lnk"
$SMToPath = "Adobe Acrobat\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Acrobat Distiller shortcut.
$SMFromPath = "Adobe Acrobat Distiller XI.lnk"
$SMToPath = "Adobe Acrobat\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Acrobat XI Pro shortcut.
$SMFromPath = "Adobe Acrobat XI Pro.lnk"
$SMToPath = "Adobe Acrobat\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Acrobat FormCentral shortcut.
$SMFromPath = "Adobe FormsCentral.lnk"
$SMToPath = "Adobe Acrobat\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Categorize folder.
if ($categorize) {
    $SMFromPath = "Adobe Acrobat\"
    $SMToPath = "Utilities\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
