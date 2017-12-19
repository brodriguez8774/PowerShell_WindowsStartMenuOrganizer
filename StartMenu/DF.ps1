<#
    Delete File/Folder.

    Will delete folders regardless of if it contains files or not.
#>


# Ensure path exists.
IF (Test-Path ($DelPath)) {

    $folderInfo = Get-ChildItem $DelPath | Measure-Object

	Write-Host (" Deleting " + ($DelPath))
	Remove-Item $DelPath -force -recurse
}
