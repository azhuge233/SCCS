$AMDDxCachePath = "$env:USERPROFILE\AppData\Local\AMD\DxCache"
$DxcCachePath = "$env:USERPROFILE\AppData\Local\AMD\DxcCache"

try {
    Get-ChildItem -Path $AMDDxCachePath -Recurse -Force -ErrorAction Stop | Remove-Item -Verbose -Recurse
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($AMDDxCachePath).`nApplication may not be installed on this machine, or the folders aren't created yet."
}

try {
    Get-ChildItem -Path $DxcCachePath -Recurse -Force -ErrorAction Stop | Remove-Item -Verbose -Recurse
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($D3DSCachePath).`nApplication may not be installed on this machine, or the folders aren't created yet."
}
