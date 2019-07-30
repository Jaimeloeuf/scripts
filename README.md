# Scripts
Repo for all my scripts.  
There will be a simple readme at the start of all script files to describe the script.  
If a script is made up of multiple files, then they will be in the same directory with a standalone README file.  

## How to run powershell scripts
Before you can execute and run any of the powershell scripts, you must make sure that you set the execution policy.  
The execution policy on your system determines what are the scripts that you can and cannot run.  
The list of execution policies are:
- Restricted
    - Stops all scripts from running. Usually the Default on most systems.
- RemoteSigned
    -  Runs scripts created on the device, and Scripts created on other computers signed by a trusted publisher.
- AllSigned
    - All the scripts will run as long as they've been signed by a trusted publisher.
- Unrestricted
    - Allow all scripts to run, without any restrictions
---
Alot of times the scripts you wrote yourself and or downloaded from the internet from individual publishers like me are not considered to be signed by a trusted provider. Thus the only execution policy that will allow you to run these scripts is the "Unrestricted" policy.  

To set a execution policy:
```ps
<# Using Unrestricted policy as an example #>
Set-ExecutionPolicy Unrestricted
```
If the above command fails with an error, it is most likey due to lack of privileges to set the policy. In that case, when you lack the user privileges to set execution policy for your system, or perhaps if you just want to set the execution policy for your current user, then you should include parameter to indicate the scope of users that will be affacted by the policy set.  
  
To set policy with a specified scope:
```ps
<# Setting policy for just the current user #>
Set-ExecutionPolicy -Scope CurrentUser Unrestricted
```
With the above command executed, it should finish silently. With that you are now ready to run your scripts!  

For more info on installing your scripts, getting it to run and where to install them, refer to the links below:
- <https://docs.microsoft.com/en-us/powershell/module/powershellget/install-script?view=powershell-6>
- <https://stackoverflow.com/questions/1011243/where-to-put-powershell-scripts>

---
## LICENSE
All scripts in this repo is available for free under the MIT License.  
Although be sure to use it at your own risk.