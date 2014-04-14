# iterm2-themes/Vaughn.itermcolors
if [ "$#" -ne 1 ]; then
  echo "Please supply the terminal Profile ID(s)"
  exit 1
fi

for PROFILE_ID in "$@"
do
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/foreground-color "'#DCDCCC'"
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/background-color "'#25234E'"
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/bold-color "'#FF5E7D'"
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/palette "['#24234F', '#705050', '#60B48A', '#DFAF8F', '#5555FF', '#F08CC3', '#8CD0D3', '#709080', '#709080', '#DCA3A3', '#60B48A', '#F0DFAF', '#5555FF', '#EC93D3', '#93E0E3', '#FFFFFF']"
done
