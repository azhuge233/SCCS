$splashtopClientLogPath = "$env:PROGRAMDATA\Splashtop\Splashtop Remote Client for STP\*"

try {
    Get-ChildItem -Path $splashtopClientLogPath -Recurse -Force -Filter *_* -ErrorAction Stop | Where-Object {$_ -notmatch "\\log\\"} | Remove-Item -Verbose
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($splashtopClientLogPath).`nApplication may not be installed on this machine, or the folders aren't created yet."
}
