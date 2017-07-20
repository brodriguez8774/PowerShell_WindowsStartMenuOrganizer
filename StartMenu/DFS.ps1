<#
    Delete File/Folder with safe checks.
    
    First check if folder is empty. If so, delete.
#>

# Ensure path exists.
IF (Test-Path ($DelPath)) {

    $folderInfo = Get-ChildItem $DelPath | Measure-Object

    if ($folderInfo.count -eq 0) {
        Write-Host (" Deleting " + ($DelPath))
        Remove-Item $DelPath -force
    } else {
        Write-Host (" Skipping " + $DelPath + " folder deletion.")
        Write-Host " Folder still has contents."
    }
}
