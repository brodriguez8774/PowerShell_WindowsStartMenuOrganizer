<#
    Img Burn
#>


# ImgBurn Icon.
$SMFromPath = "ImgBurn.lnk"
$SMToPath = "ImgBurn\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Categorize folder.
if ($categorize) {
    $SMFromPath = "ImgBurn\"
    $SMToPath = "Simulation\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
