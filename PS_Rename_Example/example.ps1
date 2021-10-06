# Import the CSV
$csv = Import-Csv "$PSScriptRoot\example.csv"

# Define the root folder
$root = "$PSScriptRoot\root\"

foreach($item in $csv)
{
  Rename-Item -path "$root\$($item.id)" -NewName $item.name -WhatIf
}

