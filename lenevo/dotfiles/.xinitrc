[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

while true; do
   xsetroot -name "Memory $(free -m | grep '^Mem' | awk '{print "total: " $2 "MB used: " $3"MB"}') | $(acpi | cut -d':' -f2- | cut -d' ' -f2-) | $( date +"%F %R" )"
   sleep 1m    # Update time every minute
done &

pulseaudio --start
xset s off
xset -dpms

while true; do
        sinac -w 600 && slock
done &

exec /home/ddaggett/bin/startdwm
#exec qtile
#exec awesome
