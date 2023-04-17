# Turn off this random display I dont understand why exists
xrandr --output DP-3 --off

# Change xorg-server screen resolution
xrandr --output eDP-1 --mode 2560x1440

# Set the wallpaper
# feh --no-fehbg --bg-center '/home/caleb/Pictures/BlackForest-Germany.jpg'
feh --no-fehbg --bg-center '/home/caleb/Pictures/nord.png'

# Background processes for dwm
dwmbar_loop &
xcompmgr -c &

# start up dwm
exec dwm

