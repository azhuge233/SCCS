$baiduNetDiskUpdatePath = "$env:USERPROFILE\AppData\Roaming\baidu\BaiduNetdisk\AutoUpdate\Download\MainApp"

try {
    Get-ChildItem -Path $baiduNetDiskUpdatePath -ErrorAction Stop | Remove-Item -Verbose
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($baiduNetDiskUpdatePath).`nApplication may not be installed on this machine, or the folders aren't created yet."
}