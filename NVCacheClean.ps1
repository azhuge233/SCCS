$nvCachePath = "C:\ProgramData\NVIDIA Corporation\NV_Cache"

Get-ChildItem -Path $nvCachePath | Remove-Item -Verbose
