$fencesSasLogPath = "$env:USERPROFILE\AppData\Local\Stardock\Fences3"

try {
    Get-ChildItem -Path $fencesSasLogPath -Recurse -Force -ErrorAction Stop | Remove-Item -Verbose
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($fencesSasLogPath).`nApplication may not be installed on this machine, or the folders aren't created yet."
}
