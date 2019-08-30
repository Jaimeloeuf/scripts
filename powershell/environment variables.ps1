<#  Base scripts to deal with environment variables
    Not for running, just for reference when writing other scripts
#>

# Get all members functions to deal with environments
Get-Item -Path Env:* | Get-Member

# Show all environment variables currently set
Get-Item -Path Env:

# Example to get path of GO
Get-Item -Path Env:\GOPATH

# Another way to get env(s) with Get-ChildItem instead of Get-Item
Get-ChildItem Env:

# By default, PowerShell displays the environment variables in the order in which it retrieves them.
# To sort the list of environment variables by variable name, pipe the output of a Get-ChildItem command to the Sort-Object cmdlet.
# For example, from any PowerShell drive, type:
Get-ChildItem Env: | Sort Name

# Another way to get the path
$Env:Gopath

# Change the value
# Need to have permissions to run
$Env:<variable-name> += "<new-value>"

# Can also use CMDLETs to set variables
Set-Item -Path Env:Path -Value ($Env:Path + ";C:\Temp")