$originCachePath = "$env:USERPROFILE\AppData\Local\Origin\Origin\cache\QtWebEngine\Default\Cache"

try {
    Get-ChildItem -Path $originCachePath -Filter f_* -ErrorAction Stop | Remove-Item -Verbose
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($originCachePath).`nApplication may not be installed on this machine, or the folders aren't created yet."
}
