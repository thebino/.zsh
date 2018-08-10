#!/bin/sh

 
echo "$(tput setaf 2)
   .~~.   .~~.    `date +"%A, %e %B %Y, %r"`
  '. \ ' ' / .'   
   .~ .~~~..~.
  : .~.'~'.~. :   Uptime.............: $(uptime)
 ~ (   ) (   ) ~  Memory.............: `top -l 1 -s 0 | grep PhysMem | awk {'print $6 " (Free) / "  $2 " (Total)"'}`
( : '~'.~.'~' : ) Load Averages......: $(uptime | cut -d":" -f4- | sed s/,//g) (1, 5, 15 min)
 ~ .~ (   ) ~. ~  Running Processes..: `ps ax | wc -l | tr -d " "`
  (  : '~' :  )   IP Addresses.......: `echo $(ifconfig | grep "inet " | grep -Fv 127.0.0.1 | awk '{print $2}') and $(wget -q -O - http://icanhazip.com/ | tail)`
   '~ .~~~. ~'    Weather............: `curl -s "http://rss.accuweather.com/rss/liveweather_rss.asp?metric=1&locCode=EUR|UK|UK001|NAILSEA|" | sed -n '/Currently:/ s/.*: \(.*\): \([0-9]*\)\([CF]\).*/\2°\3, \1/p'`
       '~'
$(tput sgr0)"
