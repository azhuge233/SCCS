$heroesOfTheStormReplayPath = "$env:USERPROFILE\Documents\Heroes of the Storm\Accounts\*\*-Hero-*\Replays\Multiplayer\*"

try {
    Get-ChildItem -Path $heroesOfTheStormReplayPath -Filter *.StormReplay -ErrorAction Stop | Remove-Item -Verbose
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($heroesOfTheStormReplayPath).`nApplication may not be installed on this machine, or the folders aren't created yet."
}