Import-module ActiveDirectory
$List = Import-CSV "UNC"

#Loop through user in the CSV
For ($x=0; $x -lt $List.Length ; $x++) {

Disable-ADAccount -Identity $List[$x].SamAccountName

}

#Get GUID For all Users and Export them to $output variable
$output = For ($x=0; $x -lt $List.Length ; $x++) {

    Get-ADUser $List[$x].SamAccountName -Properties * | Select Samaccountname,ObjectGUID
} 

#Loop through user in the Created Disabled Users CSV
ForEach ($GUID in $output)
{
Move-ADObject -Identity $GUID.ObjectGUID -TargetPath "OU PATH"
}