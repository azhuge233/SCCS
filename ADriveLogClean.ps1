$aDriveLogPath1 = "$env:USERPROFILE\AppData\Roaming\aDrive\aDrive\logs"
$aDriveLogPath2 = "$env:USERPROFILE\AppData\Roaming\aDrive\logs"

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
