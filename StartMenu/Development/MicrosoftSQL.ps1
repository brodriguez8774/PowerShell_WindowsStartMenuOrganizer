<#
    SQL Servers.
#>


# SQL 2008 folder.
$SMFromPath = "Microsoft SQL Server 2008\"
$SMToPath = "Microsoft SQL\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# SQL 2008 R2 folder.
$SMFromPath = "Microsoft SQL Server 2008 R2\"
$SMToPath = "Microsoft SQL\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# SQL 2014 folder.
$SMFromPath = "Microsoft SQL Server 2014\"
$SMToPath = "Microsoft SQL\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Categorize folder.
if ($categorize) {
    $SMFromPath = "Microsoft SQL\"
    $SMToPath = "Development\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
