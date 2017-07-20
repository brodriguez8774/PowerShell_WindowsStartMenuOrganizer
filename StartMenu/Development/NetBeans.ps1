<#
    NetBeans
#>


# Categorize folder.
if ($categorize) {
    $SMFromPath = "NetBeans\"
    $SMToPath = "Development\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
