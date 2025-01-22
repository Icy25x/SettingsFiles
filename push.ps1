# Define variables
$TargetRepo = "C:\SettingsFiles"

$SourceFolder1 = "C:\Users\barre\AppData\Local\Programs\Microsoft VS Code\resources\app\extensions\theme-barrett"
$DestFolderName1 = "Themes"

$SourceFolder2 = "C:\Users\barre\AppData\Roaming\Code\User\snippets"
$SourceFolder3 = "C:\Users\barre\AppData\Roaming\Code\User\keybindings.json"
$SourceFolder4 = "C:\Users\barre\AppData\Roaming\Code\User\settings.json"
$DestFolderName2 = "VSCode"


$BranchName = "main"

# Step 1: Navigate to your repository
Set-Location -Path $TargetRepo -ErrorAction Stop

# Step 2: Copy the source folder into the repository
Copy-Item -Path $SourceFolder1 -Destination "$TargetRepo\$DestFolderName1" -Recurse -Force

Copy-Item -Path $SourceFolder2 -Destination "$TargetRepo\$DestFolderName2" -Recurse -Force
Copy-Item -Path $SourceFolder3 -Destination "$TargetRepo\$DestFolderName2" -Recurse -Force
Copy-Item -Path $SourceFolder4 -Destination "$TargetRepo\$DestFolderName2" -Recurse -Force

# Step 3: Add the changes to Git
#git add $DestFolderName

# Step 4: Commit the changes
#git commit -m "Add folder $DestFolderName from $SourceFolder"

# Step 5: Push to the remote repository
#git push origin $BranchName