$onedriveCommonLogPath = "$env:USERPROFILE\AppData\Local\Microsoft\OneDrive\logs\Common"
$onedrivePersonalLogPath = "$env:USERPROFILE\AppData\Local\Microsoft\OneDrive\logs\Personal"

try {
    Get-ChildItem -Path $onedriveCommonLogPath -Recurse -Force -Filter *.odl -ErrorAction Stop | Remove-Item -Verbose
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($onedriveCommonLogPath).`nApplication may not be installed on this machine, or the folders aren't created yet."
}

try {
    Get-ChildItem -Path $onedrivePersonalLogPath -Recurse -Force -Filter *.odlsent -ErrorAction Stop | Remove-Item -Verbose
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($onedrivePersonalLogPath).`nApplication may not be installed on this machine, or the folders aren't created yet."
}

try {
    Get-ChildItem -Path $onedrivePersonalLogPath -Recurse -Force -Filter *.etl -ErrorAction Stop | Remove-Item -Verbose
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($onedrivePersonalLogPath).`nApplication may not be installed on this machine, or the folders aren't created yet."
}
