$RemoveData = ./ConfirmedRemove.csv

$ImportCSV = import-csv -Path $RemoveData
foreach($Line in $ImportCSV){
    $FilePath = $Line.FullName
    Write-host $FilePath
    Remove-Item -Path $FilePath -Force
}