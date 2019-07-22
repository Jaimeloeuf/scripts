<#
    This script is a wrapper script over "npm pack"
    It clears your console screen and run "npm pack" to show you the contents before cleaning up the directory

    The entire command is in 1 line, so that it will run sequentially till complete
#>
cls; tar tvf $(npm pack); rm *.tgz; dir