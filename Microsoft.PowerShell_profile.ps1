Import-Module Posh-Git
##oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\blueish.omp.json" | Invoke-Expression
# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\slimfat.omp.json" | Invoke-Expression
# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\blueish-emare.omp.json" | Invoke-Expression

# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\powerlevel10k_modern.omp.json" | Invoke-Expression

# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\powerlevel10k_classic.omp.json" | Invoke-Expression
# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\mr\powerlevel10k_classic_mr.omp.json" | Invoke-Expression
# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\mr\TwoLineTest.json" | Invoke-Expression
# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\jonathan.zsh-theme.omp.json" | Invoke-Expression
oh-my-posh init pwsh | Invoke-Expression
#
# Below pulled from sample profile at
# C:\Users\EmAre\.vscode\extensions\ms-vscode.powershell-2023.2.1\modules\PSReadLine\2.2.6\SamplePSReadLineProfile.ps1
Import-Module PSReadLine

# Searching for commands with up/down arrow is really handy.  The
# option "moves to end" is useful if you want the cursor at the end
# of the line while cycling through history like it does w/o searching,
# without that option, the cursor will remain at the position it was
# when you used up arrow, which can be useful if you forget the exact
# string you started the search on.
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

# This key handler shows the entire or filtered history using Out-GridView. The
# typed text is used as the substring pattern for filtering. A selected command
# is inserted to the command line without invoking. Multiple command selection
# is supported, e.g. selected by Ctrl + Click.
Set-PSReadLineKeyHandler -Key F7 `
	-BriefDescription History `
	-LongDescription 'Show command history' `
	-ScriptBlock {
	$pattern = $null
	[Microsoft.PowerShell.PSConsoleReadLine]::GetBufferState([ref]$pattern, [ref]$null)
	if ($pattern) {
		$pattern = [regex]::Escape($pattern)
	}

	$history = [System.Collections.ArrayList]@(
		$last = ''
		$lines = ''
		foreach ($line in [System.IO.File]::ReadLines((Get-PSReadLineOption).HistorySavePath)) {
			if ($line.EndsWith('`')) {
				$line = $line.Substring(0, $line.Length - 1)
				$lines = if ($lines) {
					"$lines`n$line"
				}
				else {
					$line
				}
				continue
			}

			if ($lines) {
				$line = "$lines`n$line"
				$lines = ''
			}

			if (($line -cne $last) -and (!$pattern -or ($line -match $pattern))) {
				$last = $line
				$line
			}
		}
	)
	$history.Reverse()

	$command = $history | Out-GridView -Title History -PassThru
	if ($command) {
		[Microsoft.PowerShell.PSConsoleReadLine]::RevertLine()
		[Microsoft.PowerShell.PSConsoleReadLine]::Insert(($command -join "`n"))
	}
}

# Above pulled from sample profile
# ===============================================================================================
#

# Aliases et al
Set-Alias -Name ll    -Value Get-ChildItem -Force
Set-Alias -Name cwd   -Value Set-Location
Set-Alias -Name sed   -Value C:\"Program Files"\Git\usr\bin\sed.exe
Set-Alias -Name gs    -Value "git status"

Set-Alias -Name which -Value 'gcm'
#
Set-Variable -Name PSScriptRoot -Value "C:\tools\RynoPoSH"
#





## touch command for PS similar to *nix touch to create a new file. 
function touch {
  Param(
    [Parameter(Mandatory=$true)]
    [string]$Path
  )

  if (Test-Path -LiteralPath $Path) {
    (Get-Item -Path $Path).LastWriteTime = Get-Date
  } else {
    New-Item -Type File -Path $Path
  }
}

## Stuff from https://learn.microsoft.com/en-us/powershell/scripting/learn/shell/creating-profiles?view=powershell-7.5

## Map PSDrives to other registry hives
if (!(Test-Path HKCR:)) {
    $null = New-PSDrive -Name HKCR -PSProvider Registry -Root HKEY_CLASSES_ROOT
    $null = New-PSDrive -Name HKU -PSProvider Registry -Root HKEY_USERS
}

## Create $PSStyle if running on a version older than 7.2
## - Add other ANSI color definitions as needed

if ($PSVersionTable.PSVersion.ToString() -lt '7.2.0') {
    # define escape char since "`e" may not be supported
    $esc = [char]0x1b
    $PSStyle = [pscustomobject]@{
        Foreground = @{
            Magenta = "${esc}[35m"
            BrightYellow = "${esc}[93m"
        }
        Background = @{
            BrightBlack = "${esc}[100m"
        }
    }
}

## Set PSReadLine options and keybindings
$PSROptions = @{
    ContinuationPrompt = '  '
    Colors             = @{
        Operator         = $PSStyle.Foreground.Magenta
        Parameter        = $PSStyle.Foreground.Magenta
        Selection        = $PSStyle.Background.BrightBlack
        InLinePrediction = $PSStyle.Foreground.BrightYellow + $PSStyle.Background.BrightBlack
    }
}
Set-PSReadLineOption @PSROptions
Set-PSReadLineKeyHandler -Chord 'Ctrl+f' -Function ForwardWord
Set-PSReadLineKeyHandler -Chord 'Enter' -Function ValidateAndAcceptLine

## Add argument completer for the dotnet CLI tool
$scriptblock = {
    param($wordToComplete, $commandAst, $cursorPosition)
    dotnet complete --position $cursorPosition $commandAst.ToString() |
        ForEach-Object {
            [System.Management.Automation.CompletionResult]::new($_, $_, 'ParameterValue', $_)
        }
}
Register-ArgumentCompleter -Native -CommandName dotnet -ScriptBlock $scriptblock

## END OF STUFF FROM ...