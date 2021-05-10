$battleNetBrowserCachePath = "$env:USERPROFILE\AppData\Local\Battle.net\BrowserCache\Cache"
$battleNetCachePath = "$env:USERPROFILE\AppData\Local\Battle.net\Cache"
$battleNetProgramDataCachePath = "$env:PROGRAMDATA\Blizzard Entertainment\Battle.net\Cache"
$battleNetProgramDataLogPath = "$env:PROGRAMDATA\Battle.net\Agent\Agent.*\Logs"

Get-ChildItem -Path $battleNetCachePath -Recurse -Force | Remove-Item -Verbose -Recurse
Get-ChildItem -Path $battleNetProgramDataCachePath -Recurse -Force | Remove-Item -Verbose -Recurse
Get-ChildItem -Path $battleNetBrowserCachePath -Recurse -Force -Filter f_* | Remove-Item -Verbose
Get-ChildItem -Path $battleNetProgramDataLogPath -Recurse -Force -Filter *.log | Remove-Item -Verbose