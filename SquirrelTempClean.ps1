$squirrelTempPath = "$env:USERPROFILE\AppData\Local\SquirrelTemp"

try {
    Get-ChildItem -Path $squirrelTempPath -ErrorAction Stop | Remove-Item -Verbose
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($squirrelTempPath).`nApplication may not be installed on this machine, or the folders aren't created yet."
}