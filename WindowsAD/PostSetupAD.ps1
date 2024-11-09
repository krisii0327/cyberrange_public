# Várakozás az AD szolgáltatások teljes indításáig
Start-Sleep -Seconds 30

# AD modul importálása
Import-Module ActiveDirectory

# Példa Organizational Units (OU) létrehozása a CodeTechSolutions struktúrával
$ouBasePath = "OU=CodeTech,DC=CodeTechSolutions,DC=local"
$ouSocPath = "OU=SOC,$ouBasePath"
$ouHrPath = "OU=HR,$ouBasePath"

# CodeTechTeams OU és al-OU-k létrehozása
New-ADOrganizationalUnit -Name "CodeTech" -Path "DC=CodeTechSolutions,DC=local" -ProtectedFromAccidentalDeletion $false -ErrorAction SilentlyContinue
New-ADOrganizationalUnit -Name "SOC" -Path $ouBasePath -ProtectedFromAccidentalDeletion $false -ErrorAction SilentlyContinue
New-ADOrganizationalUnit -Name "HR" -Path $ouBasePath -ProtectedFromAccidentalDeletion $false -ErrorAction SilentlyContinue

# SOC és HR csoportok létrehozása a CodeTechTeams struktúrában
New-ADGroup -Name "SOC" -SamAccountName "SOC" -GroupScope Global -GroupCategory Security -Path $ouSocPath
New-ADGroup -Name "HR" -SamAccountName "HR" -GroupScope Global -GroupCategory Security -Path $ouHrPath

# John Doe felhasználó létrehozása SOC csapatban
$UserPassword = ConvertTo-SecureString -AsPlainText "UserPassword1" -Force
New-ADUser -Name "John Doe" `
            -SamAccountName "john.doe" `
            -UserPrincipalName "john.doe@codetechsolutions.com" `
            -AccountPassword $UserPassword `
            -Description "PW: UserPassword1" `
            -Enabled $true `
            -Path $ouSocPath
Add-ADGroupMember -Identity "SOC" -Members "john.doe"

# Marie Curie felhasználó létrehozása HR csapatban
$UserPasswordMarie = ConvertTo-SecureString -AsPlainText "UserPassword2" -Force
New-ADUser -Name "Marie Curie" `
            -SamAccountName "marie.curie" `
            -UserPrincipalName "marie.curie@codetechsolutions.com" `
            -AccountPassword $UserPasswordMarie `
            -Description "PW: UserPassword2" `
            -Enabled $true `
            -Path $ouHrPath
Add-ADGroupMember -Identity "HR" -Members "marie.curie"

# Ütemezett feladat eltávolítása a script futtatása után
Unregister-ScheduledTask -TaskName "PostADSetup" -Confirm:$false
