
# Start Menu Organizer

## Description 

Powershell scripts for auto-organizing the start menu.

To run:
    First enable Powershell scripts.
    Copy entire "StartMenuOrganizer" folder to "C:\Scripts".
    Right click _StartMenuOrganizer.ps1 in Windows Explorer.
    Select "Run With Powershell".

To enable Powershell scripts:
    * Launch a Powershell window as Administrator and use command:
    * Set-ExecutionPolicy Unrestricted

To add additional start menu items for sorting
    * Open the appropriate folder
    * If it's a new application, create a new .ps1 file and use other files as a template
    * Otherwise, open the appropriate file and append new item strings as desired

## How it works

This is actually a generally simple powershell script. The only thing making it seem otherwise is the fact that it has to sorts many different applications.

Essentially, all it does is:
1. Self-launch as administrator, if not already (this is necessary or else windows throws errors).
2. Locate the user's start menu directories (there are generally two).
3. Backup these directories to "C:\Scripts\StartMenuOrganizer_Backup"
4. Search these directories for string matches. For every match, it moves to the appropriate start menu folder locaton.

