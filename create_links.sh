# Default locations for configuration folders
username=$(whoami) # Get username because ln cannot be in terms of ~/
WAYBAR_DEFAULT_CONFIG_LOCATION="/home/$username/.config/waybar"
WAYBAR_CONFIG_LOCATION="/home/$username/.config/hypr/waybar"

if [ -d "$WAYBAR_DEFAULT_CONFIG_LOCATION" ]; then
    # A waybar configuration exists already, symbolic links get here too
    if [ -L "$WAYBAR_DEFAULT_CONFIG_LOCATION" ]; then
        # It is a symbolik link, unlink to ensure it points to this config
        unlink $WAYBAR_DEFAULT_CONFIG_LOCATION
        
    else
        # It is a directory, move it to a backup folder
        NEW_LOCATION=$WAYBAR_DEFAULT_CONFIG_LOCATION
        NEW_LOCATION+="-backup_"
        NEW_LOCATION+=$(date +"%Y-%m-%d_%T")
        mv $WAYBAR_DEFAULT_CONFIG_LOCATION $NEW_LOCATION
    fi
fi
# Create the link to my waybar configuration
ln -s $WAYBAR_CONFIG_LOCATION $WAYBAR_DEFAULT_CONFIG_LOCATION