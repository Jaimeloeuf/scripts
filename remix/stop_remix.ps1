# Script to stop the local installation of Remix-ide from running

# To find the PID number of the process running at PORT 8080, which is the default PORT used by Remix-IDE
# netstat -aon | find /i "listening" | find /i "8080"

# List out details of The task that is running at PORT 8080
# for /f "tokens=1-5" %a in ('netstat -aon ^| findstr 8080') do tasklist /FI "PID eq %e" 

# Actual code to kill the task.
# start cmd /C "for /f "tokens=1-5" %a in ('netstat -aon ^| findstr 8080') do taskkill /F /PID %e"
start cmd stop_remix.bat