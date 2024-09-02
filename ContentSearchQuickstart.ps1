# SIT: Financial / Credit card numbers
New-ComplianceSearch -Name "Discovery / Financial / Credit card numbers / High confidence" -SharePointLocation "All" -Description "Discovery search: Credit card numbers in SharePoint Online and OneDrive with High confidence" -ContentMatchQuery 'SensitiveType:"Credit Card Number|*|85.."'

# SIT: Financial / IBANs
New-ComplianceSearch -Name "Discovery / Financial / IBAN / High confidence" -SharePointLocation "All" -Description "Discovery search: International Banking Account Numbers in SharePoint Online and OneDrive with High confidence" -ContentMatchQuery 'SensitiveType:"International banking account number (IBAN)|*|85.."'

# SIT: PII / Passport numbers
New-ComplianceSearch -Name "Discovery / PII / Passport numbers / Medium to High confidence" -SharePointLocation "All" -Description "Discovery search: Passport numbers in SharePoint Online and OneDrive with Medium to High confidence." -ContentMatchQuery 'SensitiveType:"Australia Passport Number|*|75.." OR SensitiveType:"Austria Passport Number|*|75.." OR SensitiveType:"Belgium Passport Number|*|75.." OR SensitiveType:"Bulgaria Passport Number|*|75.." OR SensitiveType:"Canada Passport Number|*|75.." OR SensitiveType:"Croatia Passport Number|*|75.." OR SensitiveType:"Cyprus Passport Number|*|75.." OR SensitiveType:"Czech Republic Passport Number|*|75.." OR SensitiveType:"Denmark Passport Number|*|75.." OR SensitiveType:"Estonia Passport Number|*|75.." OR SensitiveType:"EU Passport Number|*|75.." OR SensitiveType:"Finland Passport Number|*|75.." OR SensitiveType:"France Passport Number|*|75.." OR SensitiveType:"German Passport Number|*|75.." OR SensitiveType:"Greece Passport Number|*|75.." OR SensitiveType:"Hungary Passport Number|*|75.." OR SensitiveType:"Indonesia Passport Number|*|75.." OR SensitiveType:"Ireland Passport Number|*|75.." OR SensitiveType:"Italy Passport Number|*|75.." OR SensitiveType:"Japan Passport Number|*|75.." OR SensitiveType:"Latvia Passport Number|*|75.." OR SensitiveType:"Lithuania Passport Number|*|75.." OR SensitiveType:"Luxembourg Passport Number|*|75.." OR SensitiveType:"Malaysia Passport Number|*|85.." OR SensitiveType:"Malta Passport Number|*|75.." OR SensitiveType:"Netherlands Passport Number|*|75.." OR SensitiveType:"Philippines Passport Number|*|85.." OR SensitiveType:"Poland Passport|*|75.." OR SensitiveType:"Portugal Passport Number|*|75.." OR SensitiveType:"Romania Passport Number|*|75.." OR SensitiveType:"Russian Passport Number (Domestic)|*|75.." OR SensitiveType:"Russian Passport Number (International)|*|75.." OR SensitiveType:"Singapore Passport Number|*|85.." OR SensitiveType:"Slovakia Passport Number|*|75.." OR SensitiveType:"Slovenia Passport Number|*|75.." OR SensitiveType:"South Korea Passport Number|*|85.." OR SensitiveType:"Spain Passport Number|*|75.." OR SensitiveType:"Sweden Passport Number|*|75.." OR SensitiveType:"Taiwan Passport Number|*|75.." OR SensitiveType:"U.S. / U.K. Passport Number|*|75.." OR SensitiveType:"UAE Passport Number|*|85.." OR SensitiveType:"Ukraine Passport Number (Domestic)|*|75.." OR SensitiveType:"Ukraine Passport Number (International)|*|75.."'

# SIT: PII / National IDs
New-ComplianceSearch -Name "Discovery / PII / National IDs / Medium to High confidence" -SharePointLocation "All" -Description "Discovery search: National IDs in SharePoint Online and OneDrive with Medium to High confidence" -ContentMatchQuery 'SensitiveType:"International banking account number (IBAN)|*|85.."'

# SIT: Credentials / All combined
New-ComplianceSearch -Name "Discovery / Any credentials / Medium to High confidence" -SharePointLocation "All" -Description "Discovery search: Any technical credentials in SharePoint Online with Medium to High confidence." -ContentMatchQuery 'SensitiveType:"Amazon S3 Client Secret Access Key|*|75.." OR SensitiveType:"ASP.NET Machine Key|*|75.." OR SensitiveType:"Azure AD Client Access Token|*|75.." OR SensitiveType:"Azure AD Client Secret|*|75.." OR SensitiveType:"Azure AD User Credentials|*|75.." OR SensitiveType:"Azure App Service Deployment Password|*|75.." OR SensitiveType:"Azure Batch Shared Access Key|*|75.." OR SensitiveType:"Azure Bot Framework Secret Key|*|75.." OR SensitiveType:"Azure Bot Service App Secret|*|75.." OR SensitiveType:"Azure Cognitive Search API Key|*|75.." OR SensitiveType:"Azure Cognitive Service Key|*|75.." OR SensitiveType:"Azure Container Registry Access Key|*|75.." OR SensitiveType:"Azure COSMOS DB Account Access Key|*|75.." OR SensitiveType:"Azure Databricks Personal Access Token|*|75.." OR SensitiveType:"Azure DevOps App Secret|*|75.." OR SensitiveType:"Azure DevOps Personal Access Token|*|75.." OR SensitiveType:"Azure DocumentDB Auth Key|*|85.." OR SensitiveType:"Azure EventGrid Access Key|*|75.." OR SensitiveType:"Azure Function Master / API Key|*|75.." OR SensitiveType:"Azure IAAS Database Connection String and Azure SQL Connection String|*|85.." OR SensitiveType:"Azure IoT Connection String|*|85.." OR SensitiveType:"Azure IoT Shared Access Key|*|75.." OR SensitiveType:"Azure Logic App Shared Access Signature|*|75.." OR SensitiveType:"Azure Machine Learning Web Service API Key|*|75.." OR SensitiveType:"Azure Maps Subscription Key|*|75.." OR SensitiveType:"Azure Publish Setting Password|*|85.." OR SensitiveType:"Azure Redis Cache Connection String|*|85.." OR SensitiveType:"Azure Redis Cache Connection String Password|*|75.." OR SensitiveType:"Azure SAS|*|85.." OR SensitiveType:"Azure Service Bus Connection String|*|85.." OR SensitiveType:"Azure Service Bus Shared Access Signature|*|75.." OR SensitiveType:"Azure Shared Access Key / Web Hook Token|*|75.." OR SensitiveType:"Azure SignalR Access Key|*|75.." OR SensitiveType:"Azure SQL Connection String|*|75.." OR SensitiveType:"Azure Storage Account Access Key|*|75.." OR SensitiveType:"Azure Storage Account Key|*|85.." OR SensitiveType:"Azure Storage Account Shared Access Signature|*|75.." OR SensitiveType:"Azure Storage Account Shared Access Signature for High Risk Resources|*|75.." OR SensitiveType:"Azure Subscription Management Certificate|*|75.." OR SensitiveType:"Client Secret / Api Key|*|75.." OR SensitiveType:"General Password|*|85.." OR SensitiveType:"General Symmetric Key|*|75.." OR SensitiveType:"GitHub Personal Access Token|*|75.." OR SensitiveType:"Google API key|*|75.." OR SensitiveType:"Http Authorization Header|*|75.." OR SensitiveType:"Microsoft Bing Maps Key|*|75.." OR SensitiveType:"Slack Access Token|*|75.." OR SensitiveType:"SQL Server Connection String|*|85.." OR SensitiveType:"User Login Credentials|*|75.." OR SensitiveType:"X.509 Certificate Private Key|*|75.."'

# SIT: Credentials / Amazon S3 Client Secret Access Key
New-ComplianceSearch -Name "Discovery / Credentials: Amazon S3 Client Secret Access Key / High confidence" -SharePointLocation "All" -Description "Discovery search: Amazon S3 Client Secret Access Key / High confidence." -ContentMatchQuery 'SensitiveType:"Amazon S3 Client Secret Access Key|*|85.."'

# SIT: Credentials / ASP.NET Machine Key
New-ComplianceSearch -Name "Discovery / Credentials: ASP.NET Machine Key / High confidence" -SharePointLocation "All" -Description "Discovery search: ASP.NET Machine Key / High confidence." -ContentMatchQuery 'SensitiveType:"ASP.NET Machine Key|*|85.."'

# SIT: Credentials / Azure AD Client Access Token
New-ComplianceSearch -Name "Discovery / Credentials: Azure AD Client Access Token / High confidence" -SharePointLocation "All" -Description "Discovery search: Azure AD Client Access Token / High confidence." -ContentMatchQuery 'SensitiveType:"Azure AD Client Access Token|*|85.."'

# SIT: Credentials / Azure AD Client Secret
New-ComplianceSearch -Name "Discovery / Credentials: Azure AD Client Secret / High confidence" -SharePointLocation "All" -Description "Discovery search: Azure AD Client Secret / High confidence." -ContentMatchQuery 'SensitiveType:"Azure AD Client Secret|*|85.."'

# SIT: Credentials / Azure AD User Credentials
New-ComplianceSearch -Name "Discovery / Credentials: Azure AD User Credentials / High confidence" -SharePointLocation "All" -Description "Discovery search: Azure AD User Credentials / High confidence." -ContentMatchQuery 'SensitiveType:"Azure AD User Credentials|*|85.."'

# SIT: Credentials / Azure App Service Deployment Password
New-ComplianceSearch -Name "Discovery / Credentials: Azure App Service Deployment Password / High confidence" -SharePointLocation "All" -Description "Discovery search: Azure App Service Deployment Password / High confidence." -ContentMatchQuery 'SensitiveType:"Azure App Service Deployment Password|*|85.."'

# SIT: Credentials / Azure Batch Shared Access Key
New-ComplianceSearch -Name "Discovery / Credentials: Azure Batch Shared Access Key / High confidence" -SharePointLocation "All" -Description "Discovery search: Azure Batch Shared Access Key / High confidence." -ContentMatchQuery 'SensitiveType:"Azure Batch Shared Access Key|*|85.."'

# SIT: Credentials / Azure Bot Framework Secret Key
New-ComplianceSearch -Name "Discovery / Credentials: Azure Bot Framework Secret Key / High confidence" -SharePointLocation "All" -Description "Discovery search: Azure Bot Framework Secret Key / High confidence." -ContentMatchQuery 'SensitiveType:"Azure Bot Framework Secret Key|*|85.."'

# SIT: Credentials / Azure Bot Service App Secret
New-ComplianceSearch -Name "Discovery / Credentials: Azure Bot Service App Secret / High confidence" -SharePointLocation "All" -Description "Discovery search: Azure Bot Service App Secret / High confidence." -ContentMatchQuery 'SensitiveType:"Azure Bot Service App Secret|*|85.."'

# SIT: Credentials / Azure Cognitive Search API Key
New-ComplianceSearch -Name "Discovery / Credentials: Azure Cognitive Search API Key / High confidence" -SharePointLocation "All" -Description "Discovery search: Azure Cognitive Search API Key / High confidence." -ContentMatchQuery 'SensitiveType:"Azure Cognitive Search API Key|*|85.."'

# SIT: Credentials / Azure Cognitive Service Key
New-ComplianceSearch -Name "Discovery / Credentials: Azure Cognitive Service Key / High confidence" -SharePointLocation "All" -Description "Discovery search: Azure Cognitive Service Key / High confidence." -ContentMatchQuery 'SensitiveType:"Azure Cognitive Service Key|*|85.."'

# SIT: Credentials / Azure Container Registry Access Key
New-ComplianceSearch -Name "Discovery / Credentials: Azure Container Registry Access Key / High confidence" -SharePointLocation "All" -Description "Discovery search: Azure Container Registry Access Key / High confidence." -ContentMatchQuery 'SensitiveType:"Azure Container Registry Access Key|*|85.."'

# SIT: Credentials / Azure COSMOS DB Account Access Key
New-ComplianceSearch -Name "Discovery / Credentials: Azure COSMOS DB Account Access Key / High confidence" -SharePointLocation "All" -Description "Discovery search: Azure COSMOS DB Account Access Key / High confidence." -ContentMatchQuery 'SensitiveType:"Azure COSMOS DB Account Access Key|*|85.."'

# SIT: Credentials / Azure Databricks Personal Access Token
New-ComplianceSearch -Name "Discovery / Credentials: Azure Databricks Personal Access Token / High confidence" -SharePointLocation "All" -Description "Discovery search: Azure Databricks Personal Access Token / High confidence." -ContentMatchQuery 'SensitiveType:"Azure Databricks Personal Access Token|*|85.."'

# SIT: Credentials / Azure DevOps App Secret
New-ComplianceSearch -Name "Discovery / Credentials: Azure DevOps App Secret / High confidence" -SharePointLocation "All" -Description "Discovery search: Azure DevOps App Secret / High confidence." -ContentMatchQuery 'SensitiveType:"Azure DevOps App Secret|*|85.."'

# SIT: Credentials / Azure DevOps Personal Access Token
New-ComplianceSearch -Name "Discovery / Credentials: Azure DevOps Personal Access Token / High confidence" -SharePointLocation "All" -Description "Discovery search: Azure DevOps Personal Access Token / High confidence." -ContentMatchQuery 'SensitiveType:"Azure DevOps Personal Access Token|*|85.."'

# SIT: Credentials / Azure DocumentDB Auth Key
New-ComplianceSearch -Name "Discovery / Credentials: Azure DocumentDB Auth Key / High confidence" -SharePointLocation "All" -Description "Discovery search: Azure DocumentDB Auth Key / High confidence." -ContentMatchQuery 'SensitiveType:"Azure DocumentDB Auth Key|*|85.."'

# SIT: Credentials / Azure EventGrid Access Key
New-ComplianceSearch -Name "Discovery / Credentials: Azure EventGrid Access Key / High confidence" -SharePointLocation "All" -Description "Discovery search: Azure EventGrid Access Key / High confidence." -ContentMatchQuery 'SensitiveType:"Azure EventGrid Access Key|*|85.."'

# SIT: Credentials / Azure Function Master / API Key
New-ComplianceSearch -Name "Discovery / Credentials: Azure Function Master / API Key / High confidence" -SharePointLocation "All" -Description "Discovery search: Azure Function Master / API Key / High confidence." -ContentMatchQuery 'SensitiveType:"Azure Function Master / API Key|*|85.."'

# SIT: Credentials / Azure IAAS Database Connection String and Azure SQL Connection String
New-ComplianceSearch -Name "Discovery / Credentials: Azure IAAS Database Connection String and Azure SQL Connection String / High confidence" -SharePointLocation "All" -Description "Discovery search: Azure IAAS Database Connection String and Azure SQL Connection String / High confidence." -ContentMatchQuery 'SensitiveType:"Azure IAAS Database Connection String and Azure SQL Connection String|*|85.."'

# SIT: Credentials / Azure IoT Connection String
New-ComplianceSearch -Name "Discovery / Credentials: Azure IoT Connection String / High confidence" -SharePointLocation "All" -Description "Discovery search: Azure IoT Connection String / High confidence." -ContentMatchQuery 'SensitiveType:"Azure IoT Connection String|*|85.."'

# SIT: Credentials / Azure IoT Shared Access Key
New-ComplianceSearch -Name "Discovery / Credentials: Azure IoT Shared Access Key / High confidence" -SharePointLocation "All" -Description "Discovery search: Azure IoT Shared Access Key / High confidence." -ContentMatchQuery 'SensitiveType:"Azure IoT Shared Access Key|*|85.."'

# SIT: Credentials / Azure Logic App Shared Access Signature
New-ComplianceSearch -Name "Discovery / Credentials: Azure Logic App Shared Access Signature / High confidence" -SharePointLocation "All" -Description "Discovery search: Azure Logic App Shared Access Signature / High confidence." -ContentMatchQuery 'SensitiveType:"Azure Logic App Shared Access Signature|*|85.."'

# SIT: Credentials / Azure Machine Learning Web Service API Key
New-ComplianceSearch -Name "Discovery / Credentials: Azure Machine Learning Web Service API Key / High confidence" -SharePointLocation "All" -Description "Discovery search: Azure Machine Learning Web Service API Key / High confidence." -ContentMatchQuery 'SensitiveType:"Azure Machine Learning Web Service API Key|*|85.."'

# SIT: Credentials / Azure Maps Subscription Key
New-ComplianceSearch -Name "Discovery / Credentials: Azure Maps Subscription Key / High confidence" -SharePointLocation "All" -Description "Discovery search: Azure Maps Subscription Key / High confidence." -ContentMatchQuery 'SensitiveType:"Azure Maps Subscription Key|*|85.."'

# SIT: Credentials / Azure Publish Setting Password
New-ComplianceSearch -Name "Discovery / Credentials: Azure Publish Setting Password / High confidence" -SharePointLocation "All" -Description "Discovery search: Azure Publish Setting Password / High confidence." -ContentMatchQuery 'SensitiveType:"Azure Publish Setting Password|*|85.."'

# SIT: Credentials / Azure Redis Cache Connection String
New-ComplianceSearch -Name "Discovery / Credentials: Azure Redis Cache Connection String / High confidence" -SharePointLocation "All" -Description "Discovery search: Azure Redis Cache Connection String / High confidence." -ContentMatchQuery 'SensitiveType:"Azure Redis Cache Connection String|*|85.."'

# SIT: Credentials / Azure Redis Cache Connection String Password
New-ComplianceSearch -Name "Discovery / Credentials: Azure Redis Cache Connection String Password / High confidence" -SharePointLocation "All" -Description "Discovery search: Azure Redis Cache Connection String Password / High confidence." -ContentMatchQuery 'SensitiveType:"Azure Redis Cache Connection String Password|*|85.."'

# SIT: Credentials / Azure SAS
New-ComplianceSearch -Name "Discovery / Credentials: Azure SAS / High confidence" -SharePointLocation "All" -Description "Discovery search: Azure SAS / High confidence." -ContentMatchQuery 'SensitiveType:"Azure SAS|*|85.."'

# SIT: Credentials / Azure Service Bus Shared Access Signature
New-ComplianceSearch -Name "Discovery / Credentials: Azure Service Bus Shared Access Signature / High confidence" -SharePointLocation "All" -Description "Discovery search: Azure Service Bus Shared Access Signature / High confidence." -ContentMatchQuery 'SensitiveType:"Azure Service Bus Shared Access Signature|*|85.."'

# SIT: Credentials / Azure Shared Access Key / Web Hook Token
New-ComplianceSearch -Name "Discovery / Credentials: Azure Shared Access Key / Web Hook Token / High confidence" -SharePointLocation "All" -Description "Discovery search: Azure Shared Access Key / Web Hook Token / High confidence." -ContentMatchQuery 'SensitiveType:"Azure Shared Access Key / Web Hook Token|*|85.."'

# SIT: Credentials / Azure SignalR Access Key
New-ComplianceSearch -Name "Discovery / Credentials: Azure SignalR Access Key / High confidence" -SharePointLocation "All" -Description "Discovery search: Azure SignalR Access Key / High confidence." -ContentMatchQuery 'SensitiveType:"Azure SignalR Access Key|*|85.."'

# SIT: Credentials / Azure SQL Connection String
New-ComplianceSearch -Name "Discovery / Credentials: Azure SQL Connection String / High confidence" -SharePointLocation "All" -Description "Discovery search: Azure SQL Connection String / High confidence." -ContentMatchQuery 'SensitiveType:"Azure SQL Connection String|*|85.."'

# SIT: Credentials / Azure Storage Account Access Key
New-ComplianceSearch -Name "Discovery / Credentials: Azure Storage Account Access Key / High confidence" -SharePointLocation "All" -Description "Discovery search: Azure Storage Account Access Key / High confidence." -ContentMatchQuery 'SensitiveType:"Azure Storage Account Access Key|*|85.."'

# SIT: Credentials / Azure Storage Account Key
New-ComplianceSearch -Name "Discovery / Credentials: Azure Storage Account Key / High confidence" -SharePointLocation "All" -Description "Discovery search: Azure Storage Account Key / High confidence." -ContentMatchQuery 'SensitiveType:"Azure Storage Account Key|*|85.."'

# SIT: Credentials / Azure Storage Account Shared Access Signature
New-ComplianceSearch -Name "Discovery / Credentials: Azure Storage Account Shared Access Signature / High confidence" -SharePointLocation "All" -Description "Discovery search: Azure Storage Account Shared Access Signature / High confidence." -ContentMatchQuery 'SensitiveType:"Azure Storage Account Shared Access Signature|*|85.."'

# SIT: Credentials / Azure Storage Account Shared Access Signature for High Risk Resources
New-ComplianceSearch -Name "Discovery / Credentials: Azure Storage Account Shared Access Signature for High Risk Resources / High confidence" -SharePointLocation "All" -Description "Discovery search: Azure Storage Account Shared Access Signature for High Risk Resources / High confidence." -ContentMatchQuery 'SensitiveType:"Azure Storage Account Shared Access Signature for High Risk Resources|*|85.."'

# SIT: Credentials / Azure Subscription Management Certificate
New-ComplianceSearch -Name "Discovery / Credentials: Azure Subscription Management Certificate / High confidence" -SharePointLocation "All" -Description "Discovery search: Azure Subscription Management Certificate / High confidence." -ContentMatchQuery 'SensitiveType:"Azure Subscription Management Certificate|*|85.."'

# SIT: Credentials / Client Secret / Api Key
New-ComplianceSearch -Name "Discovery / Credentials: Client Secret / Api Key / High confidence" -SharePointLocation "All" -Description "Discovery search: Client Secret / Api Key / High confidence." -ContentMatchQuery 'SensitiveType:"Client Secret / Api Key|*|85.."'

# SIT: Credentials / General Password
New-ComplianceSearch -Name "Discovery / Credentials: General Password / High confidence" -SharePointLocation "All" -Description "Discovery search: General Password / High confidence." -ContentMatchQuery 'SensitiveType:"General Password|*|85.."'

# SIT: Credentials / General Symmetric Key
New-ComplianceSearch -Name "Discovery / Credentials: General Symmetric Key / High confidence" -SharePointLocation "All" -Description "Discovery search: General Symmetric Key / High confidence." -ContentMatchQuery 'SensitiveType:"General Symmetric Key|*|85.."'

# SIT: Credentials / GitHub Personal Access Token
New-ComplianceSearch -Name "Discovery / Credentials: GitHub Personal Access Token / High confidence" -SharePointLocation "All" -Description "Discovery search: GitHub Personal Access Token / High confidence." -ContentMatchQuery 'SensitiveType:"GitHub Personal Access Token|*|85.."'

# SIT: Credentials / Google API key
New-ComplianceSearch -Name "Discovery / Credentials: Google API key / High confidence" -SharePointLocation "All" -Description "Discovery search: Google API key / High confidence." -ContentMatchQuery 'SensitiveType:"Google API key|*|85.."'

# SIT: Credentials / Http Authorization Header
New-ComplianceSearch -Name "Discovery / Credentials: Http Authorization Header / High confidence" -SharePointLocation "All" -Description "Discovery search: Http Authorization Header / High confidence." -ContentMatchQuery 'SensitiveType:"Http Authorization Header|*|85.."'

# SIT: Credentials / Microsoft Bing Maps Key
New-ComplianceSearch -Name "Discovery / Credentials: Microsoft Bing Maps Key / High confidence" -SharePointLocation "All" -Description "Discovery search: Microsoft Bing Maps Key / High confidence." -ContentMatchQuery 'SensitiveType:"Microsoft Bing Maps Key|*|85.."'

# SIT: Credentials / Slack Access Token
New-ComplianceSearch -Name "Discovery / Credentials: Slack Access Token / High confidence" -SharePointLocation "All" -Description "Discovery search: Slack Access Token / High confidence." -ContentMatchQuery 'SensitiveType:"Slack Access Token|*|85.."'

# SIT: Credentials / SQL Server Connection String
New-ComplianceSearch -Name "Discovery / Credentials: SQL Server Connection String / High confidence" -SharePointLocation "All" -Description "Discovery search: SQL Server Connection String / High confidence." -ContentMatchQuery 'SensitiveType:"SQL Server Connection String|*|85.."'

# SIT: Credentials / User Login Credentials
New-ComplianceSearch -Name "Discovery / Credentials: User Login Credentials / High confidence" -SharePointLocation "All" -Description "Discovery search: User Login Credentials / High confidence." -ContentMatchQuery 'SensitiveType:"User Login Credentials|*|85.."'

# SIT: Credentials / X.509 Certificate Private Key
New-ComplianceSearch -Name "Discovery / Credentials: X.509 Certificate Private Key / High confidence" -SharePointLocation "All" -Description "Discovery search: X.509 Certificate Private Key / High confidence." -ContentMatchQuery 'SensitiveType:"X.509 Certificate Private Key|*|85.."'

# Run all content searches. Comment out the line below to not run the searches.
Get-ComplianceSearch | Run-ComplianceSearch
