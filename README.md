# SCCS
 Software Cache Cleaning Scripts (Windows)



`Clean.ps1` just a file delete powershell script, you can add your own rules in path.json to let it delete files for you.

`path.json` format definition:

```json
[
    // list of different apps
    {
        "Name": "App name 1",
        "Entries": [
            // list of this app's file directories
            {
                "Filters": [
                    // list of filename filters
                    // add different file prefix or suffix here
                    "*.log", "log_*.txt"
                ],
                "Path": "$($Env:USERPROFILE)\\AppData\\Roaming\\some directory\\logs"
            },
            {
                "Filters": [], // can be left empty
                "Path": "$($Env:USERPROFILE)\\AppData\\Roaming\\some other directory\\logs"
            },
            // ...
        ]
    },
    {
        "Name": "App name 2",
        "Entries": [
            // ...
        ]
    },
    // ...
]
```

