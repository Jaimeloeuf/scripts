<#  @Doc
    This is the base script to wait for user to press on any key in order to continue,
    effectively pausing the system to wait for user input.
#>

Write-Host "Press any key to continue ....."
$x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")