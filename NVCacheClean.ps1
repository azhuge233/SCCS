$nvCachePath = "C:\ProgramData\NVIDIA Corporation\NV_Cache"
$nvDXCachePath = "$env:USERPROFILE\AppData\Local\NVIDIA\DXCache"

try {
    Get-ChildItem -Path $nvCachePath -ErrorAction Stop | Remove-Item -Verbose
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($nvCachePath).`nApplication may not be installed on this machine, or the folders aren't created yet."
}

try {
    Get-ChildItem -Path $nvDXCachePath -ErrorAction Stop | Remove-Item -Verbose
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($nvDXCachePath).`nApplication may not be installed on this machine, or the folders aren't created yet."
}
