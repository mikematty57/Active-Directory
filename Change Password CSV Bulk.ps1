$CSVFile = Import-Csv "C:\Powershell\OutboardPassword.csv"

$password = ConvertTo-SecureString -String "PASSWORD" -AsPlainText -Force 

For ($x=0; $x -lt $CSVFile.Length ; $x++) {

Set-ADAccountPassword $CSVFile[$x].Username -NewPassword $Password –Reset

}