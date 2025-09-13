# Initial common vairables

$MyDocumentsFolder = Join-Path $HOME 'Documents'
$ComputerName = [System.Environment]::MachineName

# Get the latest UniGet Bundle folder
$UniGetFolder = $MyDocumentsFolder + "\UniGetUI"
$UniGetBackupName = $ComputerName + ' installed packages.ubundle'
$NewestFile = Get-ChildItem -Path $UniGetFolder -Filter "*.ubundle" -File | Sort-Object LastWriteTime -Descending | Select-Object -First 1

Copy-Item -Path "$NewestFile" -Destination "$UniGetBackupName"
git add $UniGetBackupName

# Get the latest PowerShell_profile
Copy-Item -Path $PROFILE
git add .

# Commit the updated files to git
$gitMessage = "Updated files  $(Get-Date)"
git commit -m $gitMessage
git push