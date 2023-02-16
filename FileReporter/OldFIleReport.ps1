# Jared Stillwell

$rootdir = "E:\Data\"
$YearsBack = "-10"

$CurrentDate = Get-Date
$DatetoDelete = $CurrentDate.AddYears($YearsBack)
cd $rootdir
$listfolder = ls
foreach($folder in $listfolder){
    $FileName = $folder.Name
    $ReportName = "C:\Temp\scripts\Report\Test\$FileName.csv"
    Get-ChildItem $FileName -Recurse | Where-Object {$_.LastWriteTime -lt $DatetoDelete -AND $_.PSIsContainer -like 'FALSE'} | Select-Object FullName,CreationTime,LastAccessTime,LastWriteTime | Export-csv -Path $ReportName -NoTypeInformation
}
