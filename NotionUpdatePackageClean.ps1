$notionUpdatePackagePath = "$env:USERPROFILE\AppData\Local\notion-updater"

try {
    Get-ChildItem -Path $notionUpdatePackagePath -Recurse -Force -ErrorAction Stop | Remove-Item -Verbose
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($notionUpdatePackagePath).`nApplication may not be installed on this machine, or the folders aren't created yet."
}
