#
# Configuration Folder Locations
#

username=$(whoami) # Get username because ln cannot be in terms of ~/
datetime=$(date +"%Y-%m-%d_%T") # Useful for making backup folders

WAYBAR_DEFAULT_CONFIG_LOCATION="/home/$username/.config/waybar"
WAYBAR_CONFIG_LOCATION="/home/$username/.config/hypr/Programs/waybar"

WOFI_DEFAULT_CONFIG_LOCATION="/home/$username/.config/wofi"
WOFI_CONFIG_LOCATION="/home/$username/.config/hypr/Programs/wofi"

#
# Creating Symblink to Waybar Config
#

if [ -L $WAYBAR_DEFAULT_CONFIG_LOCATION ]; then

    # An existing waybar symblink exists, unlink it to use my config
    unlink $WAYBAR_DEFAULT_CONFIG_LOCATION
    
fi

if [ -d "$WAYBAR_DEFAULT_CONFIG_LOCATION" ]; then

    # A waybar configuration exists already, back it up
    NEW_LOCATION=$WAYBAR_DEFAULT_CONFIG_LOCATION
    NEW_LOCATION+="-backup_$datetime"
    mv $WAYBAR_DEFAULT_CONFIG_LOCATION $NEW_LOCATION

fi

# Create the link to my waybar configuration
ln -s $WAYBAR_CONFIG_LOCATION $WAYBAR_DEFAULT_CONFIG_LOCATION

#
# Creating Symblink to Wofi Config
#

if [ -L $WOFI_DEFAULT_CONFIG_LOCATION ]; then

    # An existing wofi symblink exists, unlink it to use my config
    unlink $WAYBAR_DEFAULT_CONFIG_LOCATION

fi

if [ -d $WOFI_DEFAULT_CONFIG_LOCATION ]; then

    # A wofi configuration exists already, back it up
    NEW_LOCATION=$WOFI_DEFAULT_CONFIG_LOCATION
    NEW_LOCATION+="-backup_$datetime"
    mv $WOFI_DEFAULT_CONFIG_LOCATION $NEW_LOCATION

fi

# Create the link to my wofi configuration
ln -s $WOFI_CONFIG_LOCATION $WOFI_DEFAULT_CONFIG_LOCATION