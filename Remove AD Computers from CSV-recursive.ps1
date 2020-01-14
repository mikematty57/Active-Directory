Import-module ActiveDirectory

#Store the data from ComputerList in the $List variable
$List = Import-CSV "UNC"
#Loop through user in the CSV
For ($x=0; $x -lt $List.Length ; $x++) {

Get-ADComputer -Identity $List[$x].Name | Remove-ADObject -Recursive 

}