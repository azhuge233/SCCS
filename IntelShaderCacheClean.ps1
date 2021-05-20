$intelGrapgicsShaderCachePath = "$env:USERPROFILE\Appdata\LocalLow\Intel\ShaderCache"

try {
    Get-ChildItem -Path $intelGrapgicsShaderCachePath -Force -ErrorAction Stop | Remove-Item -Verbose
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($intelGrapgicsShaderCachePath).`nApplication may not be installed on this machine, or the folders aren't created yet."
}
