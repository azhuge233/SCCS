$squirrelTempPath = "$env:USERPROFILE\AppData\Local\SquirrelTemp"

Get-ChildItem -Path $squirrelTempPath | Remove-Item -Verbose
