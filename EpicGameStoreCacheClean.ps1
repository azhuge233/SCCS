$epicGameCachePath = "$env:USERPROFILE\AppData\Local\EpicGamesLauncher\Saved\webcache\Cache"

Get-ChildItem -Path $epicGameCachePath -Recurse -Force -Filter f_* | Remove-Item -Verbose
