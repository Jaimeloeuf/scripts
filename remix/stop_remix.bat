REM Script to stop the local installation of Remix-ide from running

REM To find the PID number of the process running at PORT 8080, which is the default PORT used by Remix-IDE
REM netstat -aon | find /i "listening" | find /i "8080"

REM List out details of The task that is running at PORT 8080
REM for /f "tokens=1-5" %a in ('netstat -aon ^| findstr 8080') do tasklist /FI "PID eq %e" 

REM Actual code to kill the task.
for /f "tokens=1-5" %a in ('netstat -aon ^| findstr 8080') do taskkill /F /PID %e