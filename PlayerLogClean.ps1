$playerLogPath = "$env:USERPROFILE\AppData\LocalLow\*\*"

try {
    Get-ChildItem -Path $playerLogPath -Recurse -Force -Filter Player.log -ErrorAction Stop | Remove-Item -Verbose
    Get-ChildItem -Path $playerLogPath -Recurse -Force -Filter Player-prev.log -ErrorAction Stop | Remove-Item -Verbose
    Get-ChildItem -Path $playerLogPath -Recurse -Force -Filter output_log.txt -ErrorAction Stop | Remove-Item -Verbose
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($playerLogPath).`nApplication may not be installed on this machine, or the folders aren't created yet."
}
