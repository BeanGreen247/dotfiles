# gnome-terminal
no longer using Xresources file for this stuff

use this instead
```
wget -O gnome-terminal-profiles.dconf https://raw.githubusercontent.com/BeanGreen247/dotfiles/master/gnome-terminal/gnome-terminal-profiles.dconf
dconf load /org/gnome/terminal/legacy/profiles:/ < gnome-terminal-profiles.dconf
```
then go into edit then preferences and there you should see the Elminister (named after my main rig) profile
