<#
    NX
#>


# Categorize folder.
if ($categorize) {
    $SMFromPath = "Siemens NX 9.0\"
    $SMToPath = "CAD\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
