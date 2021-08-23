$dingTalkCachePath = "$env:USERPROFILE\AppData\Local\DingTalk_*\Cache"
$dingTalkCodeCacheJSPath = "$env:USERPROFILE\AppData\Local\DingTalk_*\Code Cache\js"
$dingTalkCodeCacheWASMPath = "$env:USERPROFILE\AppData\Local\DingTalk_*\Code Cache\wasm"

try {
    Get-ChildItem -Path $dingTalkCachePath -Recurse -Force -Filter f_* -ErrorAction Stop | Remove-Item -Verbose
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($aDriveLogPath1).`nApplication may not be installed on this machine, or the folders aren't created yet."
}

try {
    Get-ChildItem -Path $dingTalkCodeCacheJSPath -Recurse -Force -Filter *_0 -ErrorAction Stop | Remove-Item -Verbose
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($aDriveLogPath1).`nApplication may not be installed on this machine, or the folders aren't created yet."
}

try {
    Get-ChildItem -Path $dingTalkCodeCacheWASMPath -Recurse -Force -Filter *_0 -ErrorAction Stop | Remove-Item -Verbose
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($aDriveLogPath1).`nApplication may not be installed on this machine, or the folders aren't created yet."
}

