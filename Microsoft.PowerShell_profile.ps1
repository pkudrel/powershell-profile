﻿
# Load posh-git example profile
#. 'C:\Users\piotr\Documents\WindowsPowerShell\Modules\posh-git\profile.example.ps1'

Import-Module posh-git


# Utf8
# https://stackoverflow.com/questions/40098771/changing-powershells-default-output-encoding-to-utf-8

$PSDefaultParameterValues['Out-File:Encoding'] = 'utf8'

# PowerShell parameter completion shim for the dotnet CLI 
Register-ArgumentCompleter -Native -CommandName dotnet -ScriptBlock {
     param($commandName, $wordToComplete, $cursorPosition)
         dotnet complete --position $cursorPosition "$wordToComplete" | ForEach-Object {
            [System.Management.Automation.CompletionResult]::new($_, $_, 'ParameterValue', $_)
         }
 }

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
