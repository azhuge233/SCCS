$nvCachePath = "C:\ProgramData\NVIDIA Corporation\NV_Cache"

try {
    Get-ChildItem -Path $nvCachePath -ErrorAction Stop | Remove-Item -Verbose
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($nvCachePath).`nApplication may not be installed on this machine, or the folders aren't created yet."
}
