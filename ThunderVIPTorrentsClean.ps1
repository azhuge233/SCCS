$thunderVIPPath = "C:\Program Files (x86)\Thunder Network\ThunderVIP\Profiles\Torrents"

Get-ChildItem -Path $thunderVIPPath | Remove-Item -Verbose -Force
