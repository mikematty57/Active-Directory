Import-module ActiveDirectory

#Store the data from UserList.csv in the $List variable
$List = Import-CSV "UNC"
#Loop through user in the CSV
ForEach ($Group in $List)
{

#Change the parameter to match what you are updating
Add-ADGroupMember -Identity $Group.name -Members UserName
}