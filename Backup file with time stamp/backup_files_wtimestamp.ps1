Function New-BackUpFolder($destinationFolder)
{
 $dte = get-date -format "dd-MM-yyyy HHmmss"
 #$dte = $dte.tostring() -replace “[:\s/]”, “.”
  $dte = $dte.tostring() 
 $backUpPath = "$destinationFolder" + $dte
 $null = New-Item -path $backUpPath -itemType directory
 New-Backup $dataFolder $backUpPath $backUpInterval
} #end New-BackUpFolder

Function New-Backup($dataFolder,$backUpPath,$backUpInterval)
{
 "backing up $dataFolder… check $backUppath for your files"
 Get-Childitem -path $dataFolder -recurse |
 Where-Object { $_.LastWriteTime -ge (get-date).addDays(-$backUpInterval) } |
 Foreach-Object { copy-item -path $_.FullName -destination $backUpPath -force }
} #end New-BackUp
# *** entry point to script ***
$backUpInterval = 1
$dataFolder = "D:\IBM notes archive"
$destinationFolder = "C:\backup D ibm notes archive\"
New-BackupFolder $destinationFolder