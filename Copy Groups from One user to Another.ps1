Import-Module ActiveDirectory

$SourceUser = Read-Host -Prompt 'Enter the username of the user whos groups you would like to copy'
$DestUser = Read-Host -Prompt "Enter the username of the user who will get: $SourceUser groups"

$SourceGroups = Get-ADUser $SourceUser -Property MemberOf | % {
    $_.MemberOf | Get-ADGroup | select Name | sort name
}

#-"List of groups for user $DestUser BEFORE script: "
#Get-ADUser $DestUser -Property MemberOf | % {
#    $_.MemberOf | Get-ADGroup | select Name | sort name
#}


For ($x=0; $x -lt $SourceGroups.Length ; $x++) {

Add-ADGroupMember $SourceGroups[$x].Name –Members $DestUser


}

#"List of groups for user $DestUser AFTER script: "
#Get-ADUser -Identity $DestUser -Property MemberOf | % {
 #   $_.MemberOf | Get-ADGroup | select Name | sort name
#}