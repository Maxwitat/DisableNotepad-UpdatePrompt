$file = "$env:appdata\notepad++\config.xml"
if((Test-Path($file)) -eq $true){
$regex = '<GUIConfig name="noUpdate" intervalDays="15" nextUpdateDate="\d\d\d\d\d\d\d\d">no</GUIConfig>'
(Get-Content $file) -replace $regex, '<GUIConfig name="noUpdate">yes</GUIConfig>' | Set-Content $file
}