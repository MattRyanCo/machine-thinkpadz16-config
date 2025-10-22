Clear-Host
Write-Host ""
Write-Host "========================================================"
Write-Host ""
Write-Host "        __  __      _ ______     __  __  ______" -ForegroundColor Cyan
Write-Host "       / / / /___  (_) ____/__  / /_/ / / /  _/" -ForegroundColor Cyan
Write-Host "      / / / / __ \/ / / __/ _ \/ __/ / / // /" -ForegroundColor Cyan
Write-Host "     / /_/ / / / / / /_/ /  __/ /_/ /_/ // /" -ForegroundColor Cyan
Write-Host "     \____/_/ /_/_/\____/\___/\__/\____/___/" -ForegroundColor Cyan
Write-Host "          UniGetUI Package Installer Script" 
Write-Host "        Created with UniGetUI Version 3.3.5"
Write-Host ""
Write-Host "========================================================"
Write-Host ""
Write-Host "NOTES:" -ForegroundColor Yellow
Write-Host "  - The install process will not be as reliable as importing a bundle with UniGetUI. Expect issues and errors." -ForegroundColor Yellow
Write-Host "  - Packages will be installed with the install options specified at the time of creation of this script." -ForegroundColor Yellow
Write-Host "  - Error/Sucess detection may not be 100% accurate." -ForegroundColor Yellow
Write-Host "  - Some of the packages may require elevation. Some of them may ask for permission, but others may fail. Consider running this script elevated." -ForegroundColor Yellow
Write-Host "  - You can skip confirmation prompts by running this script with the parameter `/DisablePausePrompts` " -ForegroundColor Yellow
Write-Host ""
Write-Host ""
if ($args[0] -ne "/DisablePausePrompts") { pause }
Write-Host ""
Write-Host "This script will attempt to install the following packages:"
Write-Host "  - Microsoft Edge from WinGet"
Write-Host "  - Blinker from Pip"
Write-Host "  - Arrow from Pip"
Write-Host "  - Google Chrome (EXE) from WinGet"
Write-Host "  - PyYAML from Pip"
Write-Host "  - Notepad++ from WinGet"
Write-Host "  - Werkzeug from Pip"
Write-Host "  - B2 from Pip"
Write-Host "  - Markdownify from Pip"
Write-Host "  - Types Python Dateutil from Pip"
Write-Host "  - Perplexity from WinGet"
Write-Host "  - Brevo Python from Pip"
Write-Host "  - PuTTY from WinGet"
Write-Host "  - Git from WinGet"
Write-Host "  - Vivaldi from WinGet"
Write-Host "  - GitKraken from WinGet"
Write-Host "  - Rich from Pip"
Write-Host "  - Proton Mail from WinGet"
Write-Host "  - Soupsieve from Pip"
Write-Host "  - Microsoft .NET Windows Desktop Runtime 8.0 from WinGet"
Write-Host "  - Outcome from Pip"
Write-Host "  - PowerShell Preview from WinGet"
Write-Host "  - Sortedcontainers from Pip"
Write-Host "  - Microsoft.UI.Xaml from WinGet"
Write-Host "  - HeidiSQL from WinGet"
Write-Host "  - Itsdangerous from Pip"
Write-Host "  - Cursor from WinGet"
Write-Host "  - Selenium from Pip"
Write-Host "  - Arc from WinGet"
Write-Host "  - ConEmu from WinGet"
Write-Host "  - Pygments from Pip"
Write-Host "  - Microsoft Visual Studio Code from WinGet"
Write-Host "  - Python 3.13 from WinGet"
Write-Host "  - File Converter from WinGet"
Write-Host "  - Rclone from WinGet"
Write-Host "  - Microsoft Teams from WinGet"
Write-Host "  - Zoom Workplace (EXE) from WinGet"
Write-Host "  - Python Launcher from WinGet"
Write-Host "  - Balsamiq Wireframes from WinGet"
Write-Host "  - Proton Drive from WinGet"
Write-Host "  - Obsidian from WinGet"
Write-Host "  - Sib Api V3 Sdk from Pip"
Write-Host "  - Proton Pass from WinGet"
Write-Host "  - Brave Browser from WinGet"
Write-Host "  - Everything from WinGet"
Write-Host "  - Sniffio from Pip"
Write-Host "  - Rst2ansi from Pip"
Write-Host "  - Ofxhome from Pip"
Write-Host "  - Attrs from Pip"
Write-Host "  - SQLAlchemy from Pip"
Write-Host "  - Greenlet from Pip"
Write-Host "  - Colorama from Pip"
Write-Host "  - MarkupSafe from Pip"
Write-Host "  - Microsoft .NET Windows Desktop Runtime 9.0 from WinGet"
Write-Host "  - Cffi from Pip"
Write-Host "  - NVM for Windows from WinGet"
Write-Host "  - Mozilla Firefox (en-US) from WinGet"
Write-Host "  - Validators from Pip"
Write-Host "  - Windows PC Health Check from WinGet"
Write-Host "  - B2sdk from Pip"
Write-Host "  - Pycparser from Pip"
Write-Host "  - Wireshark from WinGet"
Write-Host "  - Certifi from Pip"
Write-Host "  - Node.js from WinGet"
Write-Host "  - Tabulate from Pip"
Write-Host "  - Laragon from WinGet"
Write-Host "  - Python Dateutil from Pip"
Write-Host "  - Cygwin from WinGet"
Write-Host "  - Mdurl from Pip"
Write-Host "  - Gitforwindows from Npm"
Write-Host "  - Urllib3 from Pip"
Write-Host "  - Plexamp from WinGet"
Write-Host "  - Microsoft Visual C++ 2015-2022 Redistributable (x64) from WinGet"
Write-Host "  - Idna from Pip"
Write-Host "  - Oh My Posh from WinGet"
Write-Host "  - Lighthouse from Npm"
Write-Host "  - Mozilla Thunderbird ESR (en-US) from WinGet"
Write-Host "  - Click from Pip"
Write-Host "  - Jinja2 from Pip"
Write-Host "  - H11 from Pip"
Write-Host "  - Slack from WinGet"
Write-Host "  - WinMerge from WinGet"
Write-Host "  - WinDirStat from WinGet"
Write-Host "  - App Installer from WinGet"
Write-Host "  - Trio from Pip"
Write-Host "  - IMAPClient from Pip"
Write-Host "  - Annotated Types from Pip"
Write-Host "  - Argcomplete from Pip"
Write-Host "  - Wsproto from Pip"
Write-Host "  - Pip from Pip"
Write-Host "  - Microsoft Visual C++ 2015 UWP Desktop Runtime Package from WinGet"
Write-Host "  - Espanso from WinGet"
Write-Host "  - GIMP from WinGet"
Write-Host "  - PowerShell from WinGet"
Write-Host "  - Logi Options+ from WinGet"
Write-Host "  - Chocolatey from WinGet"
Write-Host "  - LibreOffice from WinGet"
Write-Host "  - Windows 11 Installation Assistant from WinGet"
Write-Host "  - Typing Extensions from Pip"
Write-Host "  - Docutils from Pip"
Write-Host "  - DuckDuckGo from WinGet"
Write-Host "  - Trio Websocket from Pip"
Write-Host "  - IrfanView from WinGet"
Write-Host "  - PySocks from Pip"
Write-Host "  - 7-Zip from WinGet"
Write-Host "  - Tqdm from Pip"
Write-Host "  - Logfury from Pip"
Write-Host "  - Bs4 from Pip"
Write-Host "  - grepWin from WinGet"
Write-Host "  - Proton VPN from WinGet"
Write-Host "  - Platformdirs from Pip"
Write-Host "  - Markdown It Py from Pip"
Write-Host "  - WinSCP from WinGet"
Write-Host "  - Charset Normalizer from Pip"
Write-Host "  - Websocket Client from Pip"
Write-Host "  - Requests from Pip"
Write-Host "  - OBS Studio from WinGet"
Write-Host "  - Beautifulsoup4 from Pip"
Write-Host "  - uv from WinGet"
Write-Host "  - Microsoft.UI.Xaml from WinGet"
Write-Host "  - Phx Class Registry from Pip"
Write-Host "  - Microsoft.WinGet.Client from PowerShell 5.x"
Write-Host "  - PowerToys from WinGet"
Write-Host "  - Windows Terminal from WinGet"
Write-Host "  - Six from Pip"
Write-Host "  - Parse Pip Search from Pip"
Write-Host "  - Flask from Pip"
Write-Host "  - RoboForm from WinGet"
Write-Host ""
if ($args[0] -ne "/DisablePausePrompts") { pause }
Clear-Host

$success_count=0
$failure_count=0
$commands_run=0
$results=""

$commands= @(
    'cmd.exe /C winget.exe install --id "Microsoft.Edge" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C pip install blinker --no-input --no-color --no-cache',
    'cmd.exe /C pip install arrow --no-input --no-color --no-cache',
    'cmd.exe /C winget.exe install --id "Google.Chrome.EXE" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C pip install PyYAML --no-input --no-color --no-cache',
    'cmd.exe /C winget.exe install --id "Notepad++.Notepad++" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C pip install Werkzeug --no-input --no-color --no-cache',
    'cmd.exe /C pip install b2 --no-input --no-color --no-cache',
    'cmd.exe /C pip install markdownify --no-input --no-color --no-cache',
    'cmd.exe /C pip install types-python-dateutil --no-input --no-color --no-cache',
    'cmd.exe /C winget.exe install --id "XP8JNQFBQH6PVF" --exact --source msstore --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C pip install brevo-python --no-input --no-color --no-cache',
    'cmd.exe /C winget.exe install --id "PuTTY.PuTTY" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C winget.exe install --id "Git.Git" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C winget.exe install --id "Vivaldi.Vivaldi" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C winget.exe install --id "Axosoft.GitKraken" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C pip install rich --no-input --no-color --no-cache',
    'cmd.exe /C winget.exe install --id "Proton.ProtonMail" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C pip install soupsieve --no-input --no-color --no-cache',
    'cmd.exe /C winget.exe install --id "Microsoft.DotNet.DesktopRuntime.8" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C pip install outcome --no-input --no-color --no-cache',
    'cmd.exe /C winget.exe install --id "Microsoft.PowerShell.Preview" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C pip install sortedcontainers --no-input --no-color --no-cache',
    'cmd.exe /C winget.exe install --id "Microsoft.UI.Xaml.2.7" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C winget.exe install --id "HeidiSQL.HeidiSQL" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C pip install itsdangerous --no-input --no-color --no-cache',
    'cmd.exe /C winget.exe install --id "Anysphere.Cursor" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C pip install selenium --no-input --no-color --no-cache',
    'cmd.exe /C winget.exe install --id "TheBrowserCompany.Arc" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C winget.exe install --id "Maximus5.ConEmu" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C pip install Pygments --no-input --no-color --no-cache',
    'cmd.exe /C winget.exe install --id "Microsoft.VisualStudioCode" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C winget.exe install --id "Python.Python.3.13" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C winget.exe install --id "AdrienAllard.FileConverter" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C winget.exe install --id "Rclone.Rclone" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C winget.exe install --id "Microsoft.Teams" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C winget.exe install --id "Zoom.Zoom.EXE" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C winget.exe install --id "Python.Launcher" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C winget.exe install --id "Balsamiq.Wireframes" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C winget.exe install --id "Proton.ProtonDrive" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C winget.exe install --id "Obsidian.Obsidian" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C pip install sib-api-v3-sdk --no-input --no-color --no-cache',
    'cmd.exe /C winget.exe install --id "Proton.ProtonPass" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C winget.exe install --id "XP8C9QZMS2PC1T" --exact --source msstore --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C winget.exe install --id "voidtools.Everything" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C pip install sniffio --no-input --no-color --no-cache',
    'cmd.exe /C pip install rst2ansi --no-input --no-color --no-cache',
    'cmd.exe /C pip install ofxhome --no-input --no-color --no-cache',
    'cmd.exe /C pip install attrs --no-input --no-color --no-cache',
    'cmd.exe /C pip install SQLAlchemy --no-input --no-color --no-cache',
    'cmd.exe /C pip install greenlet --no-input --no-color --no-cache',
    'cmd.exe /C pip install colorama --no-input --no-color --no-cache',
    'cmd.exe /C pip install MarkupSafe --no-input --no-color --no-cache',
    'cmd.exe /C winget.exe install --id "Microsoft.DotNet.DesktopRuntime.9" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C pip install cffi --no-input --no-color --no-cache',
    'cmd.exe /C winget.exe install --id "CoreyButler.NVMforWindows" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C winget.exe install --id "Mozilla.Firefox" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C pip install validators --no-input --no-color --no-cache',
    'cmd.exe /C winget.exe install --id "Microsoft.WindowsPCHealthCheck" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C pip install b2sdk --no-input --no-color --no-cache',
    'cmd.exe /C pip install pycparser --no-input --no-color --no-cache',
    'cmd.exe /C winget.exe install --id "WiresharkFoundation.Wireshark" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C pip install certifi --no-input --no-color --no-cache',
    'cmd.exe /C winget.exe install --id "OpenJS.NodeJS" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C pip install tabulate --no-input --no-color --no-cache',
    'cmd.exe /C winget.exe install --id "LeNgocKhoa.Laragon" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C pip install python-dateutil --no-input --no-color --no-cache',
    'cmd.exe /C winget.exe install --id "Cygwin.Cygwin" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C pip install mdurl --no-input --no-color --no-cache',
    'cmd.exe /C npm install ''gitforwindows@Latest''',
    'cmd.exe /C pip install urllib3 --no-input --no-color --no-cache',
    'cmd.exe /C winget.exe install --id "Plex.Plexamp" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C winget.exe install --id "Microsoft.VCRedist.2015+.x64" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C pip install idna --no-input --no-color --no-cache',
    'cmd.exe /C winget.exe install --id "JanDeDobbeleer.OhMyPosh" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C npm install ''lighthouse@Latest''',
    'cmd.exe /C winget.exe install --id "Mozilla.Thunderbird.ESR" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C pip install click --no-input --no-color --no-cache',
    'cmd.exe /C pip install Jinja2 --no-input --no-color --no-cache',
    'cmd.exe /C pip install h11 --no-input --no-color --no-cache',
    'cmd.exe /C winget.exe install --id "SlackTechnologies.Slack" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C winget.exe install --id "WinMerge.WinMerge" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C winget.exe install --id "WinDirStat.WinDirStat" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C winget.exe install --id "Microsoft.AppInstaller" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C pip install trio --no-input --no-color --no-cache',
    'cmd.exe /C pip install IMAPClient --no-input --no-color --no-cache',
    'cmd.exe /C pip install annotated-types --no-input --no-color --no-cache',
    'cmd.exe /C pip install argcomplete --no-input --no-color --no-cache',
    'cmd.exe /C pip install wsproto --no-input --no-color --no-cache',
    'cmd.exe /C pip install pip --no-input --no-color --no-cache',
    'cmd.exe /C winget.exe install --id "Microsoft.VCLibs.Desktop.14" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C winget.exe install --id "Espanso.Espanso" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C winget.exe install --id "GIMP.GIMP.3" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C winget.exe install --id "Microsoft.PowerShell" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C winget.exe install --id "Logitech.OptionsPlus" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C winget.exe install --id "Chocolatey.Chocolatey" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C winget.exe install --id "TheDocumentFoundation.LibreOffice" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C winget.exe install --id "Microsoft.WindowsInstallationAssistant" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C pip install typing_extensions --no-input --no-color --no-cache',
    'cmd.exe /C pip install docutils --no-input --no-color --no-cache',
    'cmd.exe /C winget.exe install --id "DuckDuckGo.DesktopBrowser" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C pip install trio-websocket --no-input --no-color --no-cache',
    'cmd.exe /C winget.exe install --id "IrfanSkiljan.IrfanView" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C pip install PySocks --no-input --no-color --no-cache',
    'cmd.exe /C winget.exe install --id "7zip.7zip" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C pip install tqdm --no-input --no-color --no-cache',
    'cmd.exe /C pip install logfury --no-input --no-color --no-cache',
    'cmd.exe /C pip install bs4 --no-input --no-color --no-cache',
    'cmd.exe /C winget.exe install --id "StefansTools.grepWin" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C winget.exe install --id "Proton.ProtonVPN" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C pip install platformdirs --no-input --no-color --no-cache',
    'cmd.exe /C pip install markdown-it-py --no-input --no-color --no-cache',
    'cmd.exe /C winget.exe install --id "WinSCP.WinSCP" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C pip install charset-normalizer --no-input --no-color --no-cache',
    'cmd.exe /C pip install websocket-client --no-input --no-color --no-cache',
    'cmd.exe /C pip install requests --no-input --no-color --no-cache',
    'cmd.exe /C winget.exe install --id "OBSProject.OBSStudio" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C pip install beautifulsoup4 --no-input --no-color --no-cache',
    'cmd.exe /C winget.exe install --id "astral-sh.uv" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C winget.exe install --id "Microsoft.UI.Xaml.2.8" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C pip install phx-class-registry --no-input --no-color --no-cache',
    'cmd.exe /C powershell.exe Install-Module -Name Microsoft.WinGet.Client -Confirm:$false -Force -Scope CurrentUser',
    'cmd.exe /C winget.exe install --id "Microsoft.PowerToys" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C winget.exe install --id "Microsoft.WindowsTerminal" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force',
    'cmd.exe /C pip install six --no-input --no-color --no-cache',
    'cmd.exe /C pip install parse_pip_search --no-input --no-color --no-cache',
    'cmd.exe /C pip install Flask --no-input --no-color --no-cache',
    'cmd.exe /C winget.exe install --id "SiberSystems.RoboForm" --exact --source winget --accept-source-agreements --disable-interactivity --silent --accept-package-agreements --force'
)

foreach ($command in $commands) {
    Write-Host "Running: $command" -ForegroundColor Yellow
    cmd.exe /C $command
    if ($LASTEXITCODE -eq 0) {
        Write-Host "[  OK  ] $command" -ForegroundColor Green
        $success_count++
        $results += "$([char]0x1b)[32m[  OK  ] $command`n"
    }
    else {
        Write-Host "[ FAIL ] $command" -ForegroundColor Red
        $failure_count++
        $results += "$([char]0x1b)[31m[ FAIL ] $command`n"
    }
    $commands_run++
    Write-Host ""
}

Write-Host "========================================================"
Write-Host "                  OPERATION SUMMARY"
Write-Host "========================================================"
Write-Host "Total commands run: $commands_run"
Write-Host "Successful: $success_count"
Write-Host "Failed: $failure_count"
Write-Host ""
Write-Host "Details:"
Write-Host "$results$([char]0x1b)[37m"
Write-Host "========================================================"

if ($failure_count -gt 0) {
    Write-Host "Some commands failed. Please check the log above." -ForegroundColor Yellow
}
else {
    Write-Host "All commands executed successfully!" -ForegroundColor Green
}
Write-Host ""
if ($args[0] -ne "/DisablePausePrompts") { pause }
exit $failure_count