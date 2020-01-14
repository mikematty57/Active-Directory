Import-module ActiveDirectory

#Store the data from UserList.csv in the $List variable
$List = Import-CSV "UNC"
#Loop through user in the CSV
ForEach ($User in $List)
{

Add-ADGroupMember -Identity GROUPNAME -Members $User.username
}