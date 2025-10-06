# Machine Configuration Information

This contains different settings and configuration items for my ThinkPadZ16 laptop. This machine has had so many problems and I've needed to re-image or replace it 5 times since Aug 2022. UGH!

I run the [Refresh-Files.ps1](Refresh-Files.ps1) every once in a while to update all of the files that are in this backup.

Also need to run scripts from `https://github.com/MattRyanCo/Dev-Drive` to initialize dev drive. Specifically:
- SetupDevDrive.ps1
- SetDevDriveOwner.ps1
- SetupDevDrivePackageCache.ps1

Replacing original devdrive.ps1 in this repo with the more advanced options in https://github.com/MattRyanCo/Dev-Drive


# Restoring everything - Restore the Applications and Packages
To restore your applications and packages after setting up a new laptop, you can utilize the configuration files stored in your Git repository. Here’s a step-by-step guide:

1. Install UniGetUi: Start by installing UniGetUi on your new laptop. You can download it from [here](https://www.marticliment.com/unigetui/).
2. Install Git: If you haven’t already, install Git on your new laptop. You can download it from [here](https://git-scm.com/).
3. Open a PowerShell Terminal: Open a PowerShell terminal on your new laptop.
4. Clone the Repository: Start by cloning your configuration repository to your new laptop using the following command:
```
git clone https://github.com/MattRyanCo/machine-thinkpadz16-config
```

5. Navigate to the Directory: Change into the cloned repository’s directory:
```
cd C:\Users\matt\LocalRepos\machine-thinkpadz16-config
```

6. Install Applications with UniGetUi: Use the JSON file previously created to install the applications.
- Open UniGetUi
- Navigate to the Package Bundles
- Click Open Existing Bundle
- Select the file UniGet Installed Packages.json from the cloned repository.
- Select all of the applications/packages you want to install.
- Click the Install selection button.
- Restore PowerShell Profile: Copy the Microsoft.PowerShell_profile.ps1 file back to your PowerShell profile location. You can do this using:
```
Copy-Item -Path .\Microsoft.PowerShell_profile.ps1 -Destination $PROFILE -Force
```
- At this point, you should have successfully restored your applications and settings to your new laptop. 

This process can save you a lot of time and effort when setting up a new machine.

## Software Required

[UniGetUI](https://www.marticliment.com/unigetui/)

## Acknowledgment

Thanks to https://github.com/jguadagno/ for the fork of this repo. 