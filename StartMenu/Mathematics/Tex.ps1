<#
    Tex
#>


# MikTex 2.9 folder.
$SMFromPath = "MikTex 2.9\"
$SMToPath = "Tex"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Lyx 2.1 folder.
$SMFromPath = "LyX 2.1\"
$SMToPath = "Tex"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# TexStudio 2.9 folder.
$SMFromPath = "TeXstudio\"
$SMToPath = "Tex"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Categorize folder.
if ($categorize) {
    $SMFromPath = "Tex\"
    $SMToPath = "Mathematics\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}