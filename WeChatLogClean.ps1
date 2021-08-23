$weChatLogPath = "$env:USERPROFILE\AppData\Roaming\Tencent\WeChat\log"

try {
    Get-ChildItem -Path $weChatLogPath -Recurse -Force -Filter *.*log -ErrorAction Stop | Remove-Item -Verbose
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($aDriveLogPath1).`nApplication may not be installed on this machine, or the folders aren't created yet."
}
