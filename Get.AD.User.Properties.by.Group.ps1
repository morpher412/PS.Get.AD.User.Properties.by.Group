$DEPTname = #Insert dept name here e.g. "ITProductDevelopment"
Get-ADGroupMember “$deptname” |
Where-Object { $_.objectClass -eq 'user' } |
Get-ADUser -Properties name, emailaddress |
Select-Object Name, emailaddress |
Export-csv -path C:\Output\“$deptname”.csv