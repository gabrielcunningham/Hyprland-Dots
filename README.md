# Hyprland Dotfiles
Created by Gabriel Cunningham<br>
[Can be found on Github](https://github.com/gabrielcunningham/Hyprland-Dots)

## Precursory Note
This configuration contains many me-specific files and setup information. This doesn't affect much, but it will be important to change `hyprpaper.conf` and `Monitors.conf` to work for you, mainly because my hyprpaper configuration contains references to files outside of this repository, and Monitors.conf refers to my DP/HDMI setup with DP-1 and HDMI-1. What this means is if something does not work for you, these are most likely the culprit.

Another thing to note is that while other configuration files may be included in this repo, they will need to be moved or linked to other parts of your system in order to take effect.

I will also say here that I take no responsibility for if something happens to your computer, such as your distro not working after applying my dotfiles (an extreme example, but hopefully you get my point). What I am trying to say is, do this at your own risk.

## Set up
What I would recommend for using these dot files is to do the following:
1. Go to your config directory.
```bash
$ cd ~/.config
```
2. Move your Hyprland config folder to have a backup in case something goes wrong, or you'd like to revert.
```bash
$ mv -r hypr hypr-backup # Moves hypr folder to a new hypr-backup folder
```
3. Clone this repo into your config folder. This will make it so you can automatically update everything by pulling the latest version from GitHub.
```bash
$ git clone https://github.com/gabrielcunningham/Hyprland-Dots hypr # Clones this repo into the "hypr" configuration folder
```
4. 

## Extras
* The wallpaper I am using can be found on [Unsplash](https://unsplash.com/photos/a-black-and-white-photo-of-a-snow-covered-mountain-TZ8XxTBSJR4). If this wallpaper isn't your vibe, definitely check out the photographer's other photos, there are quite a few good nature shots there!