$ADUsers = Import-Csv -Path "C:\ActiveDirectoryNewAccounts.csv." 
foreach ($User in $ADUsers) 
{ 
    $DisplayName = $User.'DisplayName' 
    $UserFirstname = $User.'FirstName' 
    $UserLastName = $User.'LastName' 
    $OU = $User.'OU' 
    $SAM = $User.'AccountName' 
    $UPN = $User.'EmailAddress' 
    $EmailAddress = $User.'EmailAddress' 
    $Description = $User.'Description' 
    $Password = $User.'Password' 
    $Department = $User.'Department' 
    $Title = $User.'Title' 
    # 
    # Checking if the user account already exists in AD 
    if (Get-ADUser -F {SamAccountName -eq $SAM}) 
       { 
               #If user does exist, output a warning message 
               Write-Warning "The user account $SAM already exist in Active Directory." 
       } 
       else 
       { 
              #If a user does not exist then create a new user account 
                New-ADUser -Name $DisplayName -DisplayName $DisplayName -SamAccountName $SAM -Title $Title -UserPrincipalName $UPN -EmailAddress $EmailAddress -GivenName $UserFirstName -Surname $UserLastName -Description $Description -Department $Department -AccountPassword (convertto-securestring $Password -AsPlainText -Force) -Enabled $True -Path $OU -ChangePasswordAtLogon $False -PasswordNeverExpires $True -server YOURDOMAIN.LOC 
       } 
} 
