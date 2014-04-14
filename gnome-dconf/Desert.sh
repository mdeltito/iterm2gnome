# iterm2-themes/Desert.itermcolors
if [ "$#" -ne 1 ]; then
  echo "Please supply the terminal Profile ID(s)"
  exit 1
fi

for PROFILE_ID in "$@"
do
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/foreground-color "'#FFFFFF'"
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/background-color "'#333333'"
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/bold-color "'#FFD700'"
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/palette "['#4D4D4D', '#FF2B2B', '#98FB98', '#F0E68C', '#CD853F', '#FFDEAD', '#FFA0A0', '#F5DEB3', '#555555', '#FF5555', '#55FF55', '#FFFF55', '#87CEFF', '#FF55FF', '#FFD700', '#FFFFFF']"
done
