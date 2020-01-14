$SAN =
Import-Csv -Path "UNC" |
Foreach-object {
$FirstName = $_.GivenName
$LastName = $_.SurName
Get-ADUser -Properties mail -Filter * | 
Where {$_.GivenName -eq $FirstName -and $_.SurName -eq $LastName }} |
Select-Object -Property SamAccountName | Export-Csv "UNC"

