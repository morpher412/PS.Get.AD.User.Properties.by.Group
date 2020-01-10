$DEPTname = "ITProductDevelopment"
Get-ADGroupMember “$deptname” |
Where-Object { $_.objectClass -eq 'user' } |
Get-ADUser -Properties name, emailaddress |
Select-Object name, emailaddress |
Export-csv -path C:\Output\“$deptname”.csv