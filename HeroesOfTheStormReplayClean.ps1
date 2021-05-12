$heroesOfTheStormReplayPath = "$env:USERPROFILE\Documents\Heroes of the Storm\Accounts\*\*-Hero-*\Replays\Multiplayer\*"

Get-ChildItem -Path $heroesOfTheStormReplayPath -Filter *.StormReplay | Remove-Item -Verbose