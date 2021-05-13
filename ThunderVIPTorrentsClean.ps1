$thunderVIPPath = "C:\Program Files (x86)\Thunder Network\ThunderVIP\Profiles\Torrents"

try {
    Get-ChildItem -Path $thunderVIPPath -ErrorAction Stop | Remove-Item -Verbose -Force
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($thunderVIPPath).`nApplication may not be installed on this machine, or the folders aren't created yet."
}