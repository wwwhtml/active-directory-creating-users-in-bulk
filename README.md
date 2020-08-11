# active-directory-creating-users-in-bulk #
This script is to create Active Directory domain user accounts. It requires a csv file.


# What Do I needed? ##
The server where accounts will be created. 
A CSV file that will contain the required information to create the accounts.
PowerShell IE as Administrator, to run the script.


# Preparating the CSV File: #
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

# The script: #
Copy this code into a text file. 
Modify as needed.

# Running the script: #
Open the PowerShell IE as Administrator.
Copy code from the modified script that fits your needs.
Paste the code into the upper part of the window in PowerShell.
Press the run button.
The results, successful or not, should be showing on the window below.

That's it!

Thank you note to whoever I copied the initial script, which later I modified and inspired me to put this descriptive version here.
