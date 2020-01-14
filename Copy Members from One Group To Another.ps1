$memberAT = Get-ADGroupMember -identity “Source Group” | select SAMAccountname
Add-ADGroupMember -Identity "Group1" -members $memberAT.SamAccountname
Add-ADGroupMember -Identity "Group2" -members $memberAT.SamAccountname
Add-ADGroupMember -Identity "Group3" -members $memberAT.SamAccountname