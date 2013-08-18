[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

while true; do
   xsetroot -name "Memory $(free -m | grep '^Mem' | awk '{print "total: " $2 "MB used: " $3"MB"}') | Uptime: $(uptime | awk '{print $3}' | tr -d ',') | $( date +"%F %R" )"
   sleep 1m    # Update time every minute
done &

pulseaudio --start
xset s off
xset -dpms

while true; do
        sinac -w 3600 && slock
done &

exec /home/user/bin/startdwm
