uptime
======

output the machine start time of today.

If you just want to output the start time, you can using below command:
net statistics workstation | find /i  "statistics since" 

But if you machine is reboot multi-time in today, this coomand will not work well.
so I wrote this script in window xp to retrive start info from windows event log.

Any question, please let me known.
