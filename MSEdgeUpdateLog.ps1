$msEdgeUpdateLogPath = "$env:PROGRAMDATA\Microsoft\EdgeUpdate\Log"

try {
    Get-ChildItem -Path $msEdgeUpdateLogPath -Recurse -Force -ErrorAction Stop | Remove-Item -Verbose
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($msEdgeUpdateLogPath).`nApplication may not be installed on this machine, or the folders aren't created yet."
}
