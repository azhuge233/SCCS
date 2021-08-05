$aDriveLogPath1 = "$env:USERPROFILE\AppData\Roaming\aDrive\aDrive\logs"
$aDriveLogPath2 = "$env:USERPROFILE\AppData\Roaming\aDrive\logs"
$aDriveUpdatePackagePath = "$env:USERPROFILE\AppData\Local\adrive-desktop-updater\pending"
$aDriveLPartitionCachePath = "$env:USERPROFILE\AppData\Roaming\aDrive\Partitions\adrive\Cache"

try {
    Get-ChildItem -Path $aDriveLogPath1 -Recurse -Force -Filter *.log -ErrorAction Stop | Remove-Item -Verbose
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($aDriveLogPath1).`nApplication may not be installed on this machine, or the folders aren't created yet."
}

try {
    Get-ChildItem -Path $aDriveLogPath2 -Recurse -Force -Filter *.log -ErrorAction Stop | Remove-Item -Verbose
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($aDriveLogPath2).`nApplication may not be installed on this machine, or the folders aren't created yet."
}

try {
    Get-ChildItem -Path $aDriveUpdatePackagePath -Recurse -Force -ErrorAction Stop | Remove-Item -Verbose
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($aDriveUpdatePackagePath).`nApplication may not be installed on this machine, or the folders aren't created yet."
}

try {
    Get-ChildItem -Path $aDriveLPartitionCachePath -Recurse -Filter f_* -Force -ErrorAction Stop | Remove-Item -Verbose
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($aDriveLPartitionCachePath).`nApplication may not be installed on this machine, or the folders aren't created yet."
}
