<#
    Delete File/Folder
    
    First check if folder is empty. If so, delete.
#>

# Ensure path exists.
IF (Test-Path ($DelPath)) {

    $folderInfo = Get-ChildItem $DelPath | Measure-Object

	Write-Host (" Deleting " + ($DelPath))
	Remove-Item $DelPath -force -recurse
}
