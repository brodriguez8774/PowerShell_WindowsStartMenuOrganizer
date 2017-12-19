<#
    Move Start Menu Item.

    Called anytime Start Menu items need to be moved.
#>


# First check that file/folder to move exists within ProgramData Start Menu.
Try {
	IF (Test-Path ($StartMenuPD + $SMFromPath)) {

		Write-Host (" Moving " + ($StartMenuPD + $SMFromPath))
		Write-Host (" To " + ($StartMenuPD + $SMToPath))

		# Check if "Move To" directory exists. Create if not.
		IF (!(Test-Path ($StartMenuPD + $SMToPath))) {
			md ($StartMenuPD + $SMToPath)
		}

		# Move file/folder to new location.
		Move-Item ($StartMenuPD + $SMFromPath) ($StartMenuPD + $SMToPath) -force -ErrorAction Stop
	}
} Catch {
	# Handle if items already exist at location.
	# Only attemps Copy-Item after Move-Item because it's technically less safe. Uses deleting.
	Copy-Item ($StartMenuPD + $SMFromPath) ($StartMenuPD + $SMToPath) -force -Recurse
	$DelPath = ($StartMenuPD + $SMFromPath)
	Invoke-Expression ($CurrentPath + "StartMenu\DF.ps1")
}


<#
	Obsolete as of implementing code to "centralize" items (located in main file).
	This code is kept for legacy reasons, in case it is once again needed in the future, due to a Window's quirk, etc.

# First check that file/folder to move exists within Users Start Menu.
Try {
	IF (Test-Path ($StartMenuU + $SMFromPath)) {

		Write-Host (" Moving " + ($StartMenuU + $SMFromPath))
		Write-Host (" To " + ($StartMenuPD + $SMToPath))

		# Check if "Move To" directory exists. Create if not.
		IF (!(Test-Path ($StartMenuPD + $SMToPath))) {
			md ($StartMenuPD + $SMToPath)
		}

		# Move file/folder to new location.
		Move-Item ($StartMenuU + $SMFromPath) ($StartMenuPD + $SMToPath) -force -ErrorAction Stop
	}
} Catch {
	# Handle if items already exist at location.
	# Only attemps Copy-Item after Move-Item because it's technically less safe. Uses deleting.
	Copy-Item ($StartMenuU + $SMFromPath) ($StartMenuPD + $SMToPath) -force -Recurse
	$DelPath = ($StartMenuU + $SMFromPath)
	Invoke-Expression ($CurrentPath + "StartMenu\DF.ps1")
}
#>
