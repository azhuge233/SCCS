Add-Type -AssemblyName 'System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35'

class Entry {
    [System.Collections.Generic.List[string]] $Filters
    [string] $Path
}

class App {
    [string] $Name
    [System.Collections.Generic.List[Entry]] $Entries
}

function Start-Delete() {
    foreach($app in $apps.GetEnumerator()) {
        Write-Host "Cleaning $($app.Name):"
        foreach($entry in $app.Entries) {
            $path = $ExecutionContext.InvokeCommand.ExpandString($entry.Path)
            $filters = $entry.Filters
            if ($filters.Count -gt 0) {
                foreach($filter in $filters.GetEnumerator()) {
                    Write-Host "`t$($path) | $($filter)"
                    try {
                        # Get-ChildItem -Path $path  -Recurse -Filter $filter -Force -ErrorAction Stop
                        Get-ChildItem -Path $path -Recurse -Filter $filter -Force -ErrorAction Stop | Remove-Item -Verbose -Force -Recurse
                    } catch {
                        Write-Host "`t$($_)" -ForegroundColor Red
                    }
                }
            } else {
                try {
                        Write-Host "`t$($path)"
                        # Get-ChildItem -Path $path -Recurse -Force -ErrorAction Stop
                        Get-ChildItem -Path $path -Recurse -Force -ErrorAction Stop | Remove-Item -Verbose -Force -Recurse
                    } catch {
                        Write-Host "`t$($_)" -ForegroundColor Red
                    }
            }
        }
    }
}

$serializer = [System.Web.Script.Serialization.JavaScriptSerializer]::new()
$apps = $serializer.Deserialize((Get-Content -Raw "$($PSScriptRoot)\\path.json"), [System.Collections.Generic.List[App]])

Start-Delete
