Import-Module ActiveDirectory
$oldSuffix = "old.org"
$newSuffix = "new.com"
$ou = "OU PATH"
$server = "DC"
Get-ADUser -SearchBase $ou -filter * | ForEach-Object {
$newUpn = $_.UserPrincipalName.Replace($oldSuffix,$newSuffix)
$_ | Set-ADUser -server $server -UserPrincipalName $newUpn
}