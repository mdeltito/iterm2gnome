# iterm2-themes/Novel.itermcolors
if [ "$#" -ne 1 ]; then
  echo "Please supply the terminal Profile ID(s)"
  exit 1
fi

for PROFILE_ID in "$@"
do
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/foreground-color "'#3B2322'"
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/background-color "'#DFDBC3'"
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/bold-color "'#8E2A19'"
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/palette "['#000000', '#CC0000', '#009600', '#D06B00', '#0000CC', '#CC00CC', '#0087CC', '#CCCCCC', '#7F7F7F', '#CC0000', '#009600', '#D06B00', '#0000CC', '#CC00CC', '#0086CB', '#FFFFFF']"
done
