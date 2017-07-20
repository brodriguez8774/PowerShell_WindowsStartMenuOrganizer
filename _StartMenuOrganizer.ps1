<#
 Powershell scripts for auto-organizing the start menu.
 
 This is the main file which calls all subfiles.

To run:
    First enable Powershell scripts.
    Copy entire "StartMenuOrganizer" folder to "C:\Scripts".
    Right click this file in Windows Explorer.
    Select "Run With Powershell".

To enable Powershell scripts:
    * Launch a Powershell window as Administrator and use command:
    * Set-ExecutionPolicy Unrestricted
#>


#=================================#
#==== Ensure Has Admin Rights ====#
#=================================#

# Get the ID and security principal of the current user account
$myWindowsID = [System.Security.Principal.WindowsIdentity]::GetCurrent()
$myWindowsPrincipal = New-Object System.Security.Principal.WindowsPrincipal($myWindowsID)

# Get the security principal for the administrator role
$adminRole = [System.Security.Principal.WindowsBuiltInRole]::Administrator

# Check to see if we are currently running as an administrator
if ($myWindowsPrincipal.IsInRole($adminRole))
{
    # We are running as an administrator, so change the title and background colour to indicate this
    $Host.UI.RawUI.WindowTitle = $myInvocation.MyCommand.Definition + "(Elevated)"
    $Host.UI.RawUI.BackgroundColor = "DarkBlue"
    Clear-Host;
}
else {
    # We are not running as an administrator, so relaunch as administrator

    # Create a new process object that starts PowerShell
    $newProcess = New-Object System.Diagnostics.ProcessStartInfo "PowerShell"

    # Specify the current script path and name as a parameter with added scope and support for scripts with spaces in it's path
    # Normal
	$newProcess.Arguments = "& '" + $script:MyInvocation.MyCommand.Path + "'"
	# Debugging
	#$newProcess.Arguments = "-NoExit & '" + $script:MyInvocation.MyCommand.Path + "'"

    # Indicate that the process should be elevated
    $newProcess.Verb = "runas"

    # Start the new process
    [System.Diagnostics.Process]::Start($newProcess)

    # Exit from the current, unelevated, process
    Exit;
}


#=======================#
#==== Set variables ====#
#=======================#

Write-Host ""
# Ask user to categorize or not.
$categorizeInput = Read-Host "Categorize Start Menu? (Y/N)"
$categorizeSanitized = $categorizeInput -replace '\s',''
if ($ategorizeSanitized -eq "Y" -or $categorizeSanitized -eq "y") {
    $categorize = $true
} else {
    $categorize = $false
}
Write-Host ""

Write-Host ""
Write-Host " =================== "
Write-Host " ==== Variables ==== "
Write-Host " =================== "
Write-Host ""

# Categorize Variable.
Write-Host "  Categorize Value: " $categorize

# Current Path Variables.
#$CurrentPath = ((Get-Item -Path ".\" -Verbose).FullName + "\")
$CurrentPath = "C:\Scripts\StartMenuOrganizer\"
Write-Host "  Current Path: " $CurrentPath

$BackupPath = "C:\Scripts\StartMenuOrganizer_Backups\"
Write-Host "  Backup Path: " $BackupPath

# User Name Variables.
$UserName = [Environment]::UserName
Write-Host "  UserName: " $UserName

# Start Menu Variables.
$StartMenuPD = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\"
Write-Host "  StartMenuPD: " $StartMenuPD
$StartMenuU = "C:\Users\" + $UserName + "\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\"
Write-Host "  StartMenuUser: " $StartMenuU
Write-Host ""
Write-Host " ---- End Variables ---- "
Write-Host ""


#===========================#
#==== Backup Start Menu ====#
#===========================#

Write-Host ""
Write-Host " =============================== "
Write-Host " ==== Backing up Start Menu ==== "
Write-Host " =============================== "
Write-Host ""

# Check if backupfolder already exists. If so, delete old backup.
# Then create new backup of start menu before moving anything.
<#
	# Old. Works but does not back up one folder above.
if (Test-Path $BackupPath) {
	Write-Host " Backup Path Exists. Clearing previous Backup..."
	$DelPath = ($BackupPath)
	Invoke-Expression ($CurrentPath + "StartMenu\DF.ps1")
	
	Write-Host " Backing Up StartMenu..."
	Copy-Item $StartMenuPD ($BackupPath + "ProgramData\") -force -Recurse
	Copy-Item $StartMenuU ($BackupPath + "Users\") -force -Recurse
} else {
	Write-Host " Backing Up StartMenu..."
	Copy-Item $StartMenuPD ($BackupPath + "ProgramData\") -force -Recurse
	Copy-Item $StartMenuU ($BackupPath + "Users\") -force -Recurse
}
#>


if (Test-Path $BackupPath) {
	Write-Host " Backup Path Exists. Clearing previous Backup..."
	$DelPath = ($BackupPath)
	Invoke-Expression ($CurrentPath + "StartMenu\DF.ps1")
	
	Write-Host " Backing Up StartMenu..."
	
	# Standard ProgramData Start Menu Location.
	Copy-Item $StartMenuPD ($BackupPath + "ProgramData\Programs\") -force -Recurse
	# One folder above Standard ProgramData Start Menu Location. A rare select few things are dumb and install to here.
	ls ($StartMenuPD + "..\") | ForEach {
		Copy-Item ($_.FullName) ($BackupPath + "ProgramData\") -force -ErrorAction Stop
	}
	
	# Standard User Start Menu Location.
	Copy-Item $StartMenuU ($BackupPath + "Users\Programs\") -force -Recurse
	# One folder above Standard User Start Menu Location. A rare select few things are dumb and install to here.
	ls ($StartMenuU + "..\") | ForEach {
		Copy-Item ($_.FullName) ($BackupPath + "Users\") -force -ErrorAction Stop
	}
} else {
	Write-Host " Backing Up StartMenu..."
	
	# Standard ProgramData Start Menu Location.
	Copy-Item $StartMenuPD ($BackupPath + "ProgramData\Programs\") -force -Recurse
	# One folder above Standard ProgramData Start Menu Location. A rare select few things are dumb and install to here.
	ls ($StartMenuPD + "..\") | ForEach {
		Copy-Item ($_.FullName) ($BackupPath + "ProgramData\") -force -ErrorAction Stop
	}
	
	# Standard User Start Menu Location.
	Copy-Item $StartMenuU ($BackupPath + "Users\Programs\") -force -Recurse
	# One folder above Standard User Start Menu Location. A rare select few things are dumb and install to here.
	ls ($StartMenuU + "..\") | ForEach {
		Copy-Item ($_.FullName) ($BackupPath + "Users\") -force -ErrorAction Stop
	}
}

Write-Host ""
Write-Host " ---- Backup Finished ---- "
Write-Host ""

#==============================================#
#==== Move Everything Out of User Directory ===#
#==============================================#

<#
    To reduce redundancy and make it easier, all files/folders are
    immediately moved to the "ProgramData" start menu folder.
    
    Only exception is the "StartUp" folder because certain program
    installers will error out if it does not exist.
#>

Write-Host ""
Write-Host " ============================================== "
Write-Host " ==== Moving to default ProgramData Folder ==== "
Write-Host " ============================================== "
Write-Host ""

# Standard User Start Menu Location.
ls ($StartMenuU) | ForEach {
    if ($_.Name -ne "Startup") {
        try {
            # Move file/folder to new location.
            Write-Host (" Moving " + ($StartMenuU + $_.Name))
            Write-Host (" To " + ($StartMenuPD))
            $nameHolder = $_.Name

            Move-Item ($StartMenuU + $nameHolder) ($StartMenuPD) -force -ErrorAction Stop
        } catch {
            # Handle if items already exist at location.
            # Only attemps Copy-Item after Move-Item because it's technically less safe. Uses deleting.
            Copy-Item ($StartMenuU + $nameHolder) ($StartMenuPD) -force -Recurse
            $DelPath = ($StartMenuU + $nameHolder)
            Invoke-Expression ($CurrentPath + "StartMenu\DF.ps1")
        }
    }
}


# One folder above Standard User Start Menu Location. A rare select few things are dumb and install to here.
ls ($StartMenuU + "..\") | ForEach {
    if ($_.Name -ne "Programs") {
        try {
            Write-Host (" Moving " + ($StartMenuU + "..\" + $_.Name))
            Write-Host (" To " + ($StartMenuPD))
            $nameHolder = $_.Name

            Move-Item ($StartMenuU + "..\" + $nameHolder) ($StartMenuPD) -force -ErrorAction Stop
        } catch {
            # Handle if items already exist at location.
            # Only attemps Copy-Item after Move-Item because it's technically less safe. Uses deleting.
            Copy-Item ($StartMenuU + "..\" + $nameHolder) ($StartMenuPD) -force -Recurse
            $DelPath = ($StartMenuU + "..\" + $nameHolder)
            Invoke-Expression ($CurrentPath + "StartMenu\DF.ps1")
        }
    }
}


# One folder above Standard ProgramData Start Menu Location. A rare select few things are dumb and install to here.
ls ($StartMenuPD + "..\") | ForEach {
    if ($_.Name -ne "Programs") {
        try {
            Write-Host (" Moving " + ($StartMenuPD + "..\" + $_.Name))
            Write-Host (" To " + ($StartMenuPD))
            $nameHolder = $_.Name

            Move-Item ($StartMenuPD + "..\" + $nameHolder) ($StartMenuPD) -force -ErrorAction Stop
        } catch {
            # Handle if items already exist at location.
            # Only attemps Copy-Item after Move-Item because it's technically less safe. Uses deleting.
            Copy-Item ($StartMenuPD + "..\" + $nameHolder) ($StartMenuPD) -force -Recurse
            $DelPath = ($StartMenuPD + "..\" + $nameHolder)
            Invoke-Expression ($CurrentPath + "StartMenu\DF.ps1")
        }
    }
}

Write-Host ""
Write-Host " ---- StartMenu Centralized ---- "
Write-Host ""


#=====================#
#==== Run Modules ====#
#=====================#

Write-Host ""
Write-Host " =============================== "
Write-Host " ==== Organizing Start Menu ==== "
Write-Host " =============================== "
Write-Host ""

ls ($CurrentPath + "\StartMenu\") | ForEach {
    if ($_.Name -ne "_Example.ps1" -and $_.Name -ne "MSMI.ps1" -and $_.Name -ne "DF.ps1" -and $_.Name -ne "DFS.ps1") {
        
        if ($_.Name -eq "CAD") {
            ls ($CurrentPath + "\StartMenu\CAD") | ForEach {
                $_.FullName | Invoke-Expression
            }
        } elseif ($_.Name -eq "Development") {
            ls ($CurrentPath + "\StartMenu\Development") | ForEach {
                $_.FullName | Invoke-Expression
            }
        } elseif ($_.Name -eq "Internet") {
            ls ($CurrentPath + "\StartMenu\Internet") | ForEach {
                $_.FullName | Invoke-Expression
            }
        } elseif ($_.Name -eq "Mathematics") {
            ls ($CurrentPath + "\StartMenu\Mathematics") | ForEach {
                $_.FullName | Invoke-Expression
            }
		} elseif ($_.Name -eq "Multimedia") {
			ls ($CurrentPath + "\StartMenu\Multimedia") | ForEach {
				$_.FullName | Invoke-Expression
			}
        } elseif ($_.Name -eq "Other") {
            ls ($CurrentPath + "\StartMenu\Other") | ForEach {
                $_.FullName | Invoke-Expression
            }
        } elseif ($_.Name -eq "Simulation") {
            ls ($CurrentPath + "\StartMenu\Simulation") | ForEach {
                $_.FullName | Invoke-Expression
            }
        } elseif ($_.Name -eq "Utilities") {
            ls ($CurrentPath + "\StartMenu\Utilities") | ForEach {
                $_.FullName | Invoke-Expression
            }
        } else {
            $_.FullName | Invoke-Expression
        }
    }
}

Write-Host ""
Write-Host " ---- StartMenu Organizing Finished ---- "
Write-Host ""


Write-Host ""
Write-Host -NoNewLine "Press any key to continue..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
