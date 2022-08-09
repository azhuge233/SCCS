<# time varialbles
$currentHour = (Get-Date).Hour
$currentMinute = (Get-Date).Minute
$limit = (Get-Date).AddHours(-$currentHour).AddMinutes(-$currentMinute)
#>
$htmlCachePath = "$env:USERPROFILE\AppData\Local\Steam\htmlcache\Cache\"
$jsCachePath = "$env:USERPROFILE\AppData\Local\Steam\htmlcache\Code Cache\js"
$SteamVRCachePath = "$env:USERPROFILE\AppData\Local\SteamVR\htmlcache\Cache"
$SteamVRGPUCachePath = "$env:USERPROFILE\AppData\Local\SteamVR\htmlcache\GPUCache"

try {
    Get-ChildItem -Path $htmlCachePath -Recurse -Force -Filter f_* -ErrorAction Stop | Remove-Item -Verbose
    Get-ChildItem -Path $jsCachePath -Recurse -Force -Filter *_0 -ErrorAction Stop | Remove-Item -Verbose
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find Steam path.`nApplication may not be installed on this machine, or the folders aren't created yet."
}

try {
	Get-ChildItem -Path $SteamVRCachePath -Recurse -Force -Filter f_* -ErrorAction Stop | Remove-Item -Verbose
	Get-ChildItem -Path $SteamVRGPUCachePath -Recurse -Force -Filter f_* -ErrorAction Stop | Remove-Item -Verbose
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find SteamVR path.`nApplication may not be installed on this machine, or the folders aren't created yet."
}
