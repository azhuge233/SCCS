$neteaseUpdatePath = "$env:USERPROFILE\AppData\Local\Netease\CloudMusic\update"

Get-ChildItem -Path $neteaseUpdatePath | Remove-Item -Verbose
