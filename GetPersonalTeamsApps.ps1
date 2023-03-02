# GetPersonalTeamsApps.ps1
# Prerequisites: Microsoft.Graph PowerShell module
 
# Import required modules (run Install-Module Microsoft.Graph to get the full bundle).
Import-Module Microsoft.Graph.Users, Microsoft.Graph.Teams
 
# Connect to Graph and define the necessary scopes. If permission has not been granted yet, consent will be requested here, so have your admin account handy.
# For use in automation purposes, it is recommended to run the script with authentication option #2 (application permissions) and authenticate with a certificate thumbprint.
 
Write-host ""
Write-host "Connecting to Microsoft Graph..." -ForegroundColor Green
 
### OPTION 1: Connect with admin account
## Uncomment the line below if using an admin account for interactive authentication
Connect-MgGraph -Scopes "User.Read.All","TeamsAppInstallation.ReadForUser"
 
### OPTION 2: Connect with application permissions
## You need an Azure AD app registration with the following Graph API permissions: TeamsAppInstallation.ReadForUser.All, User.Read.All
## You'll also need a certificate prepared for the application. Also remember to give admin consent for these permissions.
## Uncomment and modify the lines below when using application authentication
# $clientID = ""
# $tenantID = ""
# $certThumbprint = ""
# Connect-MgGraph -ClientId $clientID -TenantId $tenantID -CertificateThumbprint $certThumbprint
 
# Prepare an empty array for custom objects
$data = @()
 
# Collect internal Member user objects through the Graph API
$users = Get-MgUser -All -Select ID, UserPrincipalName, DisplayName, UserType -Filter "usertype eq 'Member'"
Write-host ""
Write-host "Gathering personal Teams app installation data from internal users..." -ForegroundColor Green
Write-host ""
Write-host "..." -ForegroundColor DarkGreen
 
# Prepare a progress bar
$i = 1
$userCount = $users.count
 
    #Iterate through the user objects
    foreach ($user in $users){
        
        #Set user ID, user principal name and displayname as variables
        $userID = $user.id
        $userUPN = $user.UserPrincipalName
        $userDisplayname = $user.Displayname
 
        #Get all installed apps for the individual user
        $userInstalledApps = Get-MgUserTeamworkInstalledApp -UserId $userID -ExpandProperty TeamsAppDefinition
    
        #Iterate through the installed apps
        foreach ($app in $userInstalledApps)
        {
            #Expand the app definition
            $appDefinition = $app.TeamsAppDefinition
 
            #Collect information from the app definition
            $appID = $appDefinition.TeamsAppID
            $appDisplayname = $appDefinition.DisplayName
            $appShortDescription = $appDefinition.ShortDescription
            $appDescription = $appDefinition.Description
            $appPublishingState = $appDefinition.PublishingState
 
            #Push the collected information into a custom object
            $object=[pscustomobject]@{
                UserID = $userID
                UserPrincipalName = $userUPN
                UserDisplayname = $userDisplayname
                TeamsAppID = $appID
                TeamsAppDisplayname = $appDisplayname
                TeamsAppShortDescription = $appShortDescription
                TeamsAppDescription = $appDescription
                TeamsAppPublishingState = $appPublishingState
            }
            
        #Add the custom object into the array
        $data += $object
        }
 
        #Advance the progress bar
        Write-progress -Activity "Collecting Teams app data from $userCount users.." -Status "User $i of $usercount"
        $i++
    }
    
#Export collected data to a CSV file in the script's directory 
$ScriptDir = Split-Path $script:MyInvocation.MyCommand.Path
$ScriptPath = $ScriptDir + "\InstalledPersonalTeamsApps.csv"
$data | Export-Csv -Path $ScriptPath -Encoding Unicode -NoTypeInformation
 
#Disconnect from Graph
Disconnect-MgGraph
Write-host "Disconnected from Microsoft Graph." -ForegroundColor Green
 
#Write out an app report for a quick look
$data | Group-Object TeamsAppDisplayName | sort count -Descending | select count, name
Write-Host ""
Write-Host "Full results saved to $ScriptPath" -ForegroundColor Yellow
Write-Host ""
