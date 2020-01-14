# Import active directory module for running AD cmdlets
Import-module ActiveDirectory

#Store the data from UserList.csv in the $List variable
$List = Import-CSV "UNC"

#Loop through user in the CSV

For ($x=0; $x -lt $List.Length ; $x++) {

#Change the parameter to match what you are updating
Set-Aduser -Identity $list[$x].samaccountname -OfficePhone $list[$x].TelephoneNumber 
}