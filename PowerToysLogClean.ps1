$PowerToysLogPath = "$env:USERPROFILE\AppData\Local\Microsoft\PowerToys"
$PowerToysRunLogPath = "$env:USERPROFILE\AppData\Local\Microsoft\PowerToys\PowerToys Run\Logs"
$FancyZoneLogPath = "$env:USERPROFILE\AppData\Local\Microsoft\PowerToys\FancyZones\Logs"

try {
    Get-ChildItem -Path $PowerToysLogPath -Recurse -Filter *.log -Force -ErrorAction Stop | Remove-Item -Verbose -Recurse
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($PowerToysLogPath).`nApplication may not be installed on this machine, or the folders aren't created yet."
}

try {
    Get-ChildItem -Path $PowerToysRunLogPath -Recurse -Force -ErrorAction Stop | Remove-Item -Verbose -Recurse
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($PowerToysRunLogPath).`nApplication may not be installed on this machine, or the folders aren't created yet."
}

try {
    Get-ChildItem -Path $FancyZoneLogPath -Recurse -Force -ErrorAction Stop | Remove-Item -Verbose -Recurse
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($FancyZoneLogPath).`nApplication may not be installed on this machine, or the folders aren't created yet."
}
