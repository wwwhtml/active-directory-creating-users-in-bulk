# How to Create Active Directory Domain User Accounts in Bulk #
This script is to create Active Directory domain user accounts. It requires a csv file.


 ## What Do I needed? ##
The server where accounts will be created. 
A CSV file that will contain the required information to create the accounts.
PowerShell IE as Administrator, to run the script.


## Preparating the CSV File: ##
This is an example, you may add or remove columns as needed.
Make sure the CSV has the following column labels:

DisplayName
FirstName
LastName
OU
AccountName
EmailAddress
Description
Password
Department
Title

Make sure the name you give to this CSV file it will be reflected in the script. Keep it simple, and without spaces.
For this example, we will call it: ActiveDirectoryNewAccounts.csv.

## The script: ##
Copy this code into a text file. 
Modify as needed.


----------- Script Starts Here ------------
<code>
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
</code>
----------- Script ends Here ------------

## Running the script: ##
Open the PowerShell IE as Administrator.
Copy code from the modified script that fits your needs.
Paste the code into the upper part of the window in PowerShell.
Press the run button.
The results, successful or not, should be showing on the window below.

That's it!

<hr color="red">
Thank you note to whoever I copied the initial script, which later I modified and inspired me to put this descriptive version here.
<hr color="red">
