<#
    Wamp Server
#>


# Categorize folder.
if ($categorize) {
    $SMFromPath = "WampServer\"
    $SMToPath = "Development\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
