### GetActivityExplorerEvents.ps1 - written by Tatu Seppälä
# Gets all available activity explorer events and saves them into an array variable called $allEvents
# You can export the array into a .CSV with: $allEvents | export-csv <path>/<to>/<file>.csv -Encoding Unicode -NTI
### Prerequisites
# Required module: ExchangeOnlineManagement
# Permissions: Up-to-date permissions documented in Learn - https://learn.microsoft.com/en-us/microsoft-365/compliance/data-classification-activity-explorer?view=o365-worldwide#roles-and-role-groups
### Notes on use
# - Run script in VSCode or PowerShell, not ISE. ISE seems to mess with date variables.
# - Adjust the StartDate, EndDate and Filter variables below to suit your needs.
# - Note: For filters you also need to add the corresponding parameter to the Export-ActivityExplorerData commands (of which there are 2).

# Connect to Security & Compliance PowerShell
Connect-IPPSSession

# Initialize array for incoming data
$allEvents = @()



## Set the _start date_ of the export to one of the options.
## Uncomment the one you want to use & leave the others as a template.

## Option 1: Current date minus 30d
# $startDate = (Get-Date).AddDays(-30).toString("MM/dd/yyyy")

## Option 2: Specific date, format: MM/dd/yyyy
$startDate = "2/23/2023"

# Option 3: Custom
# $startDate = ""

# Set _end date_ of the export to one of the options. Uncomment the one you want to use.
## Uncomment the one you want to use & leave the others as a template.

# Option 1: Current date
# $endDate = Get-Date -Format "MM/dd/yyyy"

# Option 2: Specific date, format: MM/dd/yyyy
$endDate = "3/1/2023"

# Option 3: Custom
# $endDate = ""

## Set run variables for the export

# Filters for the search. You can define up to 5 filters, with multiple parameters for each.
$Filter1 = @('Activity', 'LabelApplied')
$Filter2 = @('Workload', 'SharePoint', 'OneDrive', 'Endpoint')
# $Filter3 = ""
# $Filter4 = ""
# $Filter5 = ""
# --> Check more info on filters here: https://learn.microsoft.com/en-us/microsoft-365/compliance/data-classification-activity-explorer?view=o365-worldwide

# Number of results returned per page. Min. 1, Max. 5000. (Stick to 5000 unless you have specific reason to do otherwise.)
$pageSize = "5000"

Write-Host "Executing initial query.." -ForegroundColor Yellow
#Get initial page of events & metadata for the full search. Add additional filters to the end if defined, for ex. -Filter2 @($filter2)
$activityDataInitial = Export-ActivityExplorerData -StartTime $startDate -EndTime $endDate -PageSize $pageSize -OutputFormat JSON -Filter1 $filter1 -Filter2 $Filter2

#Add initial page of events to array
$allEvents += $activityDataInitial.ResultData | ConvertFrom-Json

#Save some metadata into variables
$totalResultCount = $activityDataInitial.TotalResultCount

Write-host "Found"$totalResultCount" activities matching the defined filters." -ForegroundColor Yellow

# Ask for explicit confirmation before fetching all results
Do{
    $Answer = Read-Host -Prompt "Export all results? (Y/N)"
} Until ($Answer -eq 'y'-or $Answer -eq 'n')

# Check answer and only proceed if answer is positive
if ($Answer -eq 'y') {
    $totalPages = [Math]::Ceiling($totalResultCount / 5000)
    $completedPages = 0
    $activity = "Exporting activities"
    $PageCookie = $null
    $lastPage = $activityDataInitial.LastPage

    Write-Progress -Activity $activity -Status "Exporting data"

    do {
        # Get one more page of results. Add additional filters to the end if defined, for ex. -Filter2 @($filter2)
        $activityDataPage = Export-ActivityExplorerData -StartTime $startDate -EndTime $endDate -PageSize 5000 -OutputFormat JSON -PageCookie $PageCookie -Filter1 $filter1 -Filter2 $Filter2

        # Save the cookie for the next page
        $PageCookie = $activityDataPage.Watermark

        # Check if it is currently the last page
        $LastPage = $activityDataPage.LastPage
        
        # Append results to the array
        $allEvents += $activityDataPage.ResultData | ConvertFrom-Json

        # Increment the progress bar
        $completedPages++

        Write-Progress -Activity $activity -Status "Exporting data"
    } while ($LastPage -eq $false)

    Write-Progress -Activity $activity -Completed
} 

Else {
Write-host "Stopping without fetching data." -ForegroundColor Cyan
}

Write-host "Completed data export. The fetched activities are available in the allEvents variable."

# Remove active connection. S&C PowerShell uses the same command to disconnect as Exchange Online.
Disconnect-ExchangeOnline -Confirm:$false
