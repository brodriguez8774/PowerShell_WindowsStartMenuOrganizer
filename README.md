
# Start Menu Organizer

## Description

Powershell scripts for auto-organizing the start menu.

To run:
    First enable Powershell scripts.
    Copy entire "StartMenuOrganizer" folder to "C:\Scripts".
    Right click _StartMenuOrganizer.ps1 in Windows Explorer.
    Select "Run With Powershell".
    Follow prompts.
    Note: "Categorize" should generally be allowed for a Win 7 install and disallowed for a Win 10 install.

To enable Powershell scripts:
    * Launch a Powershell window as Administrator and use command:
    * Set-ExecutionPolicy Unrestricted

To add additional start menu items for sorting:
    * Open the appropriate folder.
    * If it's a new application, create a new .ps1 file and use other files as a template.
    * Otherwise, open the appropriate file and append new item strings as desired.

## How it works

Essentially, these scripts will:
1. Self-launch as administrator, if not already (this is necessary or else windows throws errors).
2. Locate the user's start menu directories (there are generally two).
3. Backup these directories to "C:\Scripts\StartMenuOrganizer_Backup" (That way, the original start menu setup can be reapplied if anything happens to explode).
4. Consolidate the directories into a single folder, located within ProgramData.
5. Search for string matches. For every match, it moves given item to the appropriate start menu folder locaton.
6. If categorizing is enabled (not recommended for Win 10, but very recommended for Win 7), then folders are further organized into larger category folders.
