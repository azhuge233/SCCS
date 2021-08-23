$tencentLogPath = "$env:USERPROFILE\AppData\Roaming\Tencent\Logs"

try {
    Get-ChildItem -Path $tencentLogPath -Recurse -Force -Filter *.tlg -ErrorAction Stop | Remove-Item -Verbose
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($aDriveLogPath1).`nApplication may not be installed on this machine, or the folders aren't created yet."
}

