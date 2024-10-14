# Default locations for configuration folders
WAYBAR_DEFAULT_CONFIG_LOCATION="~/.config/waybar"
WAYBAR_CONFIG_LOCATION="~/.config/hypr/waybar"

if [ -d "$WAYBAR_DEFAULT_CONFIG_LOCATION" ]; then
    # A waybar configuration exists already, symbolic links get here too
    if [ -L "$WAYBAR_DEFAULT_CONFIG_LOCATION" ]; then
        # It is a symbolik link, overwrite to ensure it points to this config
        ln -sf $WAYBAR_CONFIG_LOCATION $WAYBAR_DEFAULT_CONFIG_LOCATION
    else
        # It is a directory, move it to a backup folder
        NEW_LOCATION=$WAYBAR_DEFAULT_CONFIG_LOCATION
        NEW_LOCATION+="_"
        NEW_LOCATION+=$(date +"%Y-%m-%d_%T")
        mv $WAYBAR_DEFAULT_CONFIG_LOCATION $NEW_LOCATION
    fi
else
    # A waybar configuration does not already exist, create one
    ln -s $WAYBAR_CONFIG_LOCATION $WAYBAR_DEFAULT_CONFIG_LOCATION
fi