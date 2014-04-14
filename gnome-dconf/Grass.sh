# iterm2-themes/Grass.itermcolors
if [ "$#" -ne 1 ]; then
  echo "Please supply the terminal Profile ID(s)"
  exit 1
fi

for PROFILE_ID in "$@"
do
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/foreground-color "'#FFF0A5'"
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/background-color "'#13773C'"
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/bold-color "'#FFB03B'"
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/palette "['#000000', '#BB0000', '#00BB00', '#E7B000', '#0000A3', '#950061', '#00BBBB', '#BBBBBB', '#555555', '#BB0000', '#00BB00', '#E7B000', '#0000BB', '#FF55FF', '#55FFFF', '#FFFFFF']"
done
