#Get-ChildItem "C:\config\app*\config.xml" -Recurse | ForEach-Object -Process {
#    (Get-Content $_) -Replace 'this', 'that' | Set-Content $_
#}

#Get-ChildItem "D:\Test folder" -Recurse | ForEach-Object -Process {
#    (Get-Content $_) -Replace '-', ' - ' | Set-Content $_
#}


cd "C:\Users\jasonlee.win7\Desktop\powershell\Rename files" 
Get-ChildItem *.* | Rename-Item -NewName {$_.Name -replace ".2021", " - 2021"}