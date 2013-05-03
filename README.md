uptime
======

output the machine start time of today.

If you just want to output the start time, you can using below command:
net statistics workstation | find /i  "statistics since" 

But if you machine is reboot multi-time in today, this coomand will not work well.
so I wrote this script in window xp to retrive start info from windows event log.
if this script is not work for you, maybe the date format in you windows is not "YYYY-(M)M-(D)D".
so please change the formt in windwos control panel or change the script by yourself.

Any questions, please let me known.
