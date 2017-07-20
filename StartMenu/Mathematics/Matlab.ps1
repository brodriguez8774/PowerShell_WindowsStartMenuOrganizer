<#
    Matlab
#>


# 2016a folder.
$SMFromPath = "MATLAB R2016a\"
$SMToPath = "MATLAB\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Categorize folder.
if ($categorize) {
    $SMFromPath = "MATLAB\"
    $SMToPath = "Mathematics\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
