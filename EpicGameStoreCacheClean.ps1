$epicGameCachePath = "$env:USERPROFILE\AppData\Local\EpicGamesLauncher\Saved\webcache_*\Cache"

try {
    Get-ChildItem -Path $epicGameCachePath -Recurse -Force -Filter f_* -ErrorAction Stop | Remove-Item -Verbose
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($epicGameCachePath).`nApplication may not be installed on this machine, or the folders aren't created yet."
}
