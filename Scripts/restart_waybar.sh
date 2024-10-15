# A very basic script that handles restarting waybar which can be very useful
# to test changes to a configuration rapidly
killall waybar
waybar & disown