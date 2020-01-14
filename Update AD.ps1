Import-module ActiveDirectory 
Import-CSV "UNC" | % {
$mail = $_.mail
$title = $_.title
$department = $_.department
$state = $_.state
$office = $_.office
$city = $_.city
$officephone = $_.officephone
$pobox = $_.pobox
$displayname = $_.displayname
$givenname = $_.givenname
$surname = $_.surname
$description = $_.description
$mailnickname = $_.mailnickname
$user = Get-ADUser -Filter {mail -eq $mail}
Set-ADUser $User.samaccountname -title $title -Department $department -state $state -office $office -city $city -OfficePhone $officephone -POBox $pobox -DisplayName $displayname -GivenName $givenname -surname $surname -Description $description
} 