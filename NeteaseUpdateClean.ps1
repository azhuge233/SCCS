$neteaseUpdatePath = "$env:USERPROFILE\AppData\Local\Netease\CloudMusic\update"

try {
    Get-ChildItem -Path $neteaseUpdatePath -ErrorAction Stop | Remove-Item -Verbose
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($neteaseUpdatePath).`nApplication may not be installed on this machine, or the folders aren't created yet."
}
