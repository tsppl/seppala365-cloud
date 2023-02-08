# Add Graph API permissions to a Managed Identity
# Prerequisites: 
# - AzureAD / AzureADPreview PowerShell module
# - Cloud Application Administrator or higher admin role

# Connect to Azure AD Powershell
Connect-AzureAD

# Initialize variables
$GraphID = "00000003-0000-0000-c000-000000000000"
$RequiredPermission = "Organization.Read.All"
$TenantID="The ID of your tenant"
$LogicAppName="The name of your Logic App, for ex. LicenseReporting"
 
# Select service principal of your Logic App w/ system-assigned managed identity
$LogicAppServicePrincipal = (Get-AzureADServicePrincipal -Filter "displayName eq '$LogicAppName'")
 
# Select service principal of the Graph API built-in app
$GraphServicePrincipal = Get-AzureADServicePrincipal -Filter "appId eq '$GraphID'"
 
# Select the designated application permission from the Graph API app
$APIPermission = $GraphServicePrincipal.AppRoles | Where-Object {$_.Value -eq $RequiredPermission -and $_.AllowedMemberTypes -contains "Application"}
 
# Add the designated app permission to the system-assigned managed identity
New-AzureAdServiceAppRoleAssignment -ObjectId $LogicAppServicePrincipal.ObjectId -PrincipalId $LogicAppServicePrincipal.ObjectId -ResourceId $GraphServicePrincipal.ObjectId -Id $APIPermission.Id
