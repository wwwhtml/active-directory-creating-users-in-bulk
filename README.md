# How to Create Active Directory Domain User Accounts in Bulk #
This script is to create Active Directory domain user accounts. It requires a csv file.


 ## What Do I needed? ##
The server where accounts will be created. 
A CSV file that will contain the required information to create the accounts.
PowerShell IE as Administrator, to run the script.


## Preparating the CSV File: ##
This is an example, you may add or remove columns as needed in the file (and in the script).
Make sure the CSV has the following column labels: 
DisplayName, FirstName, LastName, OU, AccountName, EmailAddress, Description, Password, Department, Title. 
 
Make sure the name you give to this CSV file it will be reflected in the script. Keep it simple, and without spaces.
For this example, we will call it: ActiveDirectoryNewAccounts.csv.

## The Script: ##
In the script state the csv file path, for this example: C:\ActiveDirectoryNewAccounts.csv.
Replace "YOURDOMAIN.LOC" for the one of your Domain Controller.
If you removed/added columns in the CSV file, you may need to do those adjustments in the script as well.
For this example, this CSV file includes: 

DisplayName, FirstName, LastName, OU, AccountName, EmailAddress, Description, Password, Department, Title. 

Grab the script code at:
https://github.com/wwwhtml/active-directory-creating-users-in-bulk/blob/master/creating-active-directory-domain-accounts-in-bulk.ps1

## Running the Script: ##
Open the PowerShell IE as Administrator.
Copy code from the modified script that fits your needs.
Paste the code into the upper part of the window in PowerShell.
Press the run button.
The results, successful or not, should be showing on the window below.

## Of Course! ##
Suggest to run a test with a couple of users to make sure it runs how you intent it.

Thanks, and I hope this is of some use to someone out there.

<hr color="red">
<i>Thank you note to whoever I copied the initial script from. It inspired me to modify it, improve it for my understanding, and to share it again. </i> :)
