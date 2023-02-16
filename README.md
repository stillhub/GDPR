# GDPR
Assists companies with GDPR regulations on Windows based filesystems by utilising two PowerShell scripts. Use the first script (FileReporter) to create reports of files that are older than X years old, verify the files can be removed (remove any paths that you would like the data kept) and then use the second script (FileRemover) to remove the data from your servers.

FileReporter - Creates reports (csv format) of files older than X years. The script will create a report for each sub-directory found in the root folder.
    *Adjust $rootdir and $YearsBack variables in the PS script.

FileRemover - Removes files located in a csv file.
    *Adjust the $RemoveData variable to the path of the csv report you would like to delete the data.
