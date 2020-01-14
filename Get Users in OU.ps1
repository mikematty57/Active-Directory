Import-Module ActiveDirectory

Get-ADUser -SearchBase "OUPATH" -Filter * -ResultSetSize 5000 | Select Name,SamAccountName | Export-Csv "UNC"
