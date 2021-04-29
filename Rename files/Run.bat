@ECHO OFF


rem --- 950 Big 5 --> 65001 UTF-8
CHCP 65001

rem Powershell.exe -ExecutionPolicy Bypass "C:\Users\jasonlee.win7\Desktop\powershell\Rename files\Rename.ps1"

rem Set-ExecutionPolicy RemoteSigned

Powershell.exe -ExecutionPolicy Bypass -Command ". 'C:\Users\jasonlee.win7\Desktop\powershell\Rename files\Rename.ps1'"


rem Powershell.exe -ExecutionPolicy Bypass -Command ". 'C:\Users\jasonlee.win7\Desktop\powershell\Backup file with time stamp\backup_files_wtimestamp.ps1'"