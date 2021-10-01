$aDrivePendingUpdatePackagePath = "$env:USERPROFILE\AppData\Local\adrive-desktop-updater\pending"

try {
    Get-ChildItem -Path $aDrivePendingUpdatePackagePath -Recurse -Force -ErrorAction Stop | Remove-Item -Verbose
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($aDrivePendingUpdatePackagePath).`nApplication may not be installed on this machine, or the folders aren't created yet."
}
