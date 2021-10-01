$clashCachePath = "$env:USERPROFILE\AppData\Roaming\clash_win\Cache"

try {
    Get-ChildItem -Path $clashCachePath -Recurse -Force -Filter f_* -ErrorAction Stop | Remove-Item -Verbose
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($clashCachePath).`nApplication may not be installed on this machine, or the folders aren't created yet."
}
