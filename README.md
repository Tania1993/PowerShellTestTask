# PowerShellTestTask

_Get-UsersIDs-List.ps1_ script retrieves all users ids from json file and returns a list of them with 'active' parameter equals true.
_Get-UsersIDs-With-Current-Date.ps1_ script gets the list of ids from the previous script and returns users ids with the current date.

Use the following command for running the program:

`Write-Output .\Get-UsersIDs-List.ps1 | .\Get-UsersIDs-With-Current-Date.ps1`
