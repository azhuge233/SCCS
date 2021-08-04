$PowerToysLogPath = "$env:USERPROFILE\AppData\Local\Microsoft\PowerToys"

try {
    Get-ChildItem -Path $PowerToysLogPath -Recurse -Filter *.log -Force -ErrorAction Stop | Remove-Item -Verbose -Recurse
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($PowerToysLogPath).`nApplication may not be installed on this machine, or the folders aren't created yet."
}
