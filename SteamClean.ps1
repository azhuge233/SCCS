$currentHour = (Get-Date).Hour
$currentMinute = (Get-Date).Minute
$limit = (Get-Date).AddHours(-$currentHour).AddMinutes(-$currentMinute)
$htmlCachePath = "$env:USERPROFILE\AppData\Local\Steam\htmlcache\Cache\"
$jsCachePath = "$env:USERPROFILE\AppData\Local\Steam\htmlcache\Code Cache\js"

Get-ChildItem -Path $htmlCachePath -Recurse -Force -Filter f_* | Where-Object { !$_.PSIsContainer -and $_.LastWriteTime -lt $limit } | Remove-Item -Verbose
Get-ChildItem -Path $jsCachePath -Recurse -Force -Filter *_0 | Where-Object { !$_.PSIsContainer -and $_.LastWriteTime -lt $limit } | Remove-Item -Verbose
