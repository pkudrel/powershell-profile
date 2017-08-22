
# Load posh-git example profile
. 'C:\Users\piotr\Documents\WindowsPowerShell\Modules\posh-git\profile.example.ps1'

# Utf8
# https://stackoverflow.com/questions/40098771/changing-powershells-default-output-encoding-to-utf-8

$PSDefaultParameterValues['Out-File:Encoding'] = 'utf8'

