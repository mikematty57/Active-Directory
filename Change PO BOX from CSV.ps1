Import-module ActiveDirectory

#Store the data from UserList.csv in the $List variable
$List = Import-CSV "UNC"

#Loop through user in the CSV
ForEach ($User in $List)
{

#Change the parameter to match what you are updating
Set-Aduser -Identity $User.username -POBox 'POBOX'
}