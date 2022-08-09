$OculusLogPath = "$env:USERPROFILE\AppData\Local\Oculus"
$OculusRCTCachePath = "$env:USERPROFILE\AppData\LocalLow\Oculus\Dash\misc\RCTCache"
$OculusClientCachePath = "$env:USERPROFILE\AppData\Roaming\OculusClient\Cache"

try {
    Get-ChildItem -Path $OculusLogPath -Recurse -Filter *.log -Force -ErrorAction Stop | Remove-Item -Verbose -Recurse
	Get-ChildItem -Path $OculusLogPath -Recurse -Filter PerfLog*.json -Force -ErrorAction Stop | Remove-Item -Verbose -Recurse
	Get-ChildItem -Path $OculusLogPath -Recurse -Filter Client*.txt -Force -ErrorAction Stop | Remove-Item -Verbose -Recurse
	Get-ChildItem -Path $OculusLogPath -Recurse -Filter LinkClient*.txt -Force -ErrorAction Stop | Remove-Item -Verbose -Recurse
	Get-ChildItem -Path $OculusLogPath -Recurse -Filter Service*.txt -Force -ErrorAction Stop | Remove-Item -Verbose -Recurse
	Get-ChildItem -Path $OculusLogPath -Recurse -Filter OVRRedir*.txt -Force -ErrorAction Stop | Remove-Item -Verbose -Recurse
	Get-ChildItem -Path $OculusLogPath -Recurse -Filter GuardianBoundary*.txt -Force -ErrorAction Stop | Remove-Item -Verbose -Recurse
	
	Get-ChildItem -Path $OculusRCTCachePath -Recurse -Force -ErrorAction Stop | Remove-Item -Verbose -Recurse
	
	Get-ChildItem -Path $OculusClientCachePath -Recurse -Filter f_* -Force -ErrorAction Stop | Remove-Item -Verbose -Recurse
} catch [System.Management.Automation.ItemNotFoundException] {
    "Can't find $($OculusLogPath).`nApplication may not be installed on this machine, or the folders aren't created yet."
}
