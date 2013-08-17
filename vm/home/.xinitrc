while true; do
   xsetroot -name "Memory $(free -m | grep '^Mem' | awk '{print "total: " $2 "MB used: " $3"MB"}') | Uptime: $(uptime | awk '{print $3}' | tr -d ',') | $( date +"%F %R" )"
   sleep 1m    # Update time every minute
done &
xset s off
xset -dpmi
exec dwm
