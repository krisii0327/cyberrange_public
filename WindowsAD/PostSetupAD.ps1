# Wait until the AD services are fully started
Start-Sleep -Seconds 30

# Import AD module
Import-Module ActiveDirectory

# Example: Creating a new group
New-ADGroup -Name "ITAdmins" -SamAccountName "ITAdmins" -GroupScope Global -GroupCategory Security

# Example: Creating a new user
$UserPassword = (ConvertTo-SecureString -AsPlainText "UserPassword1" -Force)
New-ADUser -Name "John Doe" -SamAccountName "jdoe" -UserPrincipalName "jdoe@$domainName" -AccountPassword $UserPassword -Enabled $true

# Additional user/group creation commands can be added here

# Remove the scheduled task after it completes
Unregister-ScheduledTask -TaskName "PostADSetup" -Confirm:$false
