Set-ExecutionPolicy RemoteSigned
Import-Module LyncOnlineConnector
$session = New-CsOnlineSession
import-Pssession $session
Get-CsOnlineUser -identity Username | select sipaddress