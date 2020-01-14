Get-ADUser -Filter * -SearchBase 'OUPath' | ForEach-Object {
Set-ADUser $_.SamAccountName -HomeDrive "J:" -HomeDirectory "\\UNC\$($_.SamAccountName)"
}
