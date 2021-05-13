$battleNetBrowserCachePath = "$env:USERPROFILE\AppData\Local\Battle.net\BrowserCache\Cache"
$battleNetCachePath = "$env:USERPROFILE\AppData\Local\Battle.net\Cache"
$battleNetProgramDataCachePath = "$env:PROGRAMDATA\Blizzard Entertainment\Battle.net\Cache"
$battleNetProgramDataLogPath = "$env:PROGRAMDATA\Battle.net\Agent\Agent.*\Logs"

try {
    Get-ChildItem -Path $battleNetCachePath -Recurse -Force -ErrorAction Stop | Remove-Item -Verbose -Recurse
    Get-ChildItem -Path $battleNetProgramDataCachePath -Recurse -Force  -ErrorAction Stop | Remove-Item -Verbose -Recurse
    Get-ChildItem -Path $battleNetBrowserCachePath -Recurse -Force -Filter f_*  -ErrorAction Stop | Remove-Item -Verbose
    Get-ChildItem -Path $battleNetProgramDataLogPath -Recurse -Force -Filter *.log  -ErrorAction Stop | Remove-Item -Verbose
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find Battle.net path.`nApplication may not be installed on this machine, or the folders aren't created yet."
}