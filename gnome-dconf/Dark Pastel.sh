# iterm2-themes/Dark Pastel.itermcolors
if [ "$#" -ne 1 ]; then
  echo "Please supply the terminal Profile ID(s)"
  exit 1
fi

for PROFILE_ID in "$@"
do
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/foreground-color "'#FFFFFF'"
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/background-color "'#000000'"
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/bold-color "'#FF5E7D'"
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/palette "['#000000', '#FF5555', '#55FF55', '#FFFF55', '#5555FF', '#FF55FF', '#55FFFF', '#BBBBBB', '#555555', '#FF5555', '#55FF55', '#FFFF55', '#5555FF', '#FF55FF', '#55FFFF', '#FFFFFF']"
done
