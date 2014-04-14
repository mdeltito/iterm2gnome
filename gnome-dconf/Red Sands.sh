# iterm2-themes/Red Sands.itermcolors
if [ "$#" -ne 1 ]; then
  echo "Please supply the terminal Profile ID(s)"
  exit 1
fi

for PROFILE_ID in "$@"
do
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/foreground-color "'#D7C9A7'"
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/background-color "'#79241E'"
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/bold-color "'#DFBD22'"
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/palette "['#000000', '#FF3F00', '#00BB00', '#E7B000', '#0071FF', '#BB00BB', '#00BBBB', '#BBBBBB', '#555555', '#BB0000', '#00BB00', '#E7B000', '#0071AE', '#FF55FF', '#55FFFF', '#FFFFFF']"
done
