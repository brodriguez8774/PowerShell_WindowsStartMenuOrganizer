<#
    Ninite Programs 
#>


# Development Folder

# JDK folder.
$SMFromPath = "Java Development Kit\"
$SMToPath = "Java\"
Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")


# Categorize Java folder.
if ($categorize) {
    $SMFromPath = "Java\"
    $SMToPath = "Development\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}


# Multimedia Folder

# Categorize VLC Player folder.
if ($categorize) {
    $SMFromPath = "VideoLAN\"
    $SMToPath = "Multimedia\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}


# Utilties Folder

# Categorize 7-Zip folder.
if ($categorize) {
    $SMFromPath = "7-Zip\"
    $SMToPath = "Utilities\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}


# Categorize CutePDF folder.
if ($categorize) {
    $SMFromPath = "CutePDF\"
    $SMToPath = "Utilities\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}


# Categorize Silverlight folder.
if ($categorize) {
    $SMFromPath = "Microsoft Silverlight\"
    $SMToPath = "Utilities\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}


# Categorize Notepad++ folder.
if ($categorize) {
    $SMFromPath = "Notepad++\"
    $SMToPath = "Utilities\"
    Invoke-Expression ($CurrentPath + "StartMenu\MSMI.ps1")
}
