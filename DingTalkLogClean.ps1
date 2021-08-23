$dingTalkLogPath = "$env:USERPROFILE\AppData\Roaming\DingTalk\log"
$holmeslogsPath = "$env:USERPROFILE\AppData\Roaming\DingTalk\holmeslogs"
$updaterlogsPath = "$env:USERPROFILE\AppData\Roaming\DingTalk\updaterlogs"

try {
    Get-ChildItem -Path $dingTalkLogPath -Recurse -Force -Filter *.log* -ErrorAction Stop | Remove-Item -Verbose
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($aDriveLogPath1).`nApplication may not be installed on this machine, or the folders aren't created yet."
}

try {
    Get-ChildItem -Path $holmeslogsPath -Recurse -Force -Filter *.holmes* -ErrorAction Stop | Remove-Item -Verbose
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($aDriveLogPath1).`nApplication may not be installed on this machine, or the folders aren't created yet."
}

try {
    Get-ChildItem -Path $updaterlogsPath -Recurse -Force -Filter *.txt -ErrorAction Stop | Remove-Item -Verbose
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($aDriveLogPath1).`nApplication may not be installed on this machine, or the folders aren't created yet."
}
