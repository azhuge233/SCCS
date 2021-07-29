$baiduNetDiskUpdatePackagePath = "$env:USERPROFILE\AppData\Roaming\baidu\BaiduNetdisk\AutoUpdate\Download\MainApp"
$baiduNetDiskPepFlashPlayerPath = "$env:USERPROFILE\AppData\Roaming\baidu\BaiduNetdisk\pepflashplayer.dll"
$baiduNetDiskBrowserModuleUpdatePath = "$env:USERPROFILE\AppData\Roaming\baidu\BaiduNetdisk\module\browserengine"
$baiduNetDiskKernelLogPath = "$env:USERPROFILE\AppData\Roaming\BaiduYunKernel\Data"

try {
    Get-ChildItem -Path $baiduNetDiskUpdatePackagePath -ErrorAction Stop | Remove-Item -Verbose
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($baiduNetDiskUpdatePackagePath).`nApplication may not be installed on this machine, or the folders aren't created yet."
}

try {
    Get-ChildItem -Path $baiduNetDiskPepFlashPlayerPath -ErrorAction Stop | Remove-Item -Force
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($baiduNetDiskPepFlashPlayerPath).`nApplication may not be installed on this machine, or the folders aren't created yet."
}

try {
    Get-ChildItem -Path $baiduNetDiskBrowserModuleUpdatePath -ErrorAction Stop | Remove-Item -Verbose -Force -Recurse
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($baiduNetDiskBrowserModuleUpdatePath).`nApplication may not be installed on this machine, or the folders aren't created yet."
}

try {
    Get-ChildItem -Path $baiduNetDiskKernelLogPath -Filter *.log -ErrorAction Stop | Remove-Item -Verbose -Force -Recurse
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($baiduNetDiskKernelLogPath).`nApplication may not be installed on this machine, or the folders aren't created yet."
}
