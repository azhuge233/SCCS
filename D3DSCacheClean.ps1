$D3DSCachePath = "$env:USERPROFILE\AppData\Local\D3DSCache\"

try {
    Get-ChildItem -Path $D3DSCachePath -Recurse -Force -ErrorAction Stop | Remove-Item -Verbose -Recurse
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($D3DSCachePath).`nApplication may not be installed on this machine, or the folders aren't created yet."
}
