$baiduNetDiskUpdatePath = "$env:USERPROFILE\AppData\Roaming\baidu\BaiduNetdisk\AutoUpdate\Download\MainApp"

Get-ChildItem -Path $baiduNetDiskUpdatePath | Remove-Item -Verbose
