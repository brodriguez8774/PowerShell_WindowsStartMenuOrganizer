<#
    WMware
#>


# Categorize folder.
if ($categorize) {
    $SMFromPath = "VMware\"
    $SMToPath = "Utilities\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
