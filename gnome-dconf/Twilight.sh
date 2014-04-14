# iterm2-themes/Twilight.itermcolors
if [ "$#" -ne 1 ]; then
  echo "Please supply the terminal Profile ID(s)"
  exit 1
fi

for PROFILE_ID in "$@"
do
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/foreground-color "'#FEFFD3'"
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/background-color "'#141414'"
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/bold-color "'#FEFFD3'"
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/palette "['#141414', '#C06C43', '#AFB979', '#C2A86C', '#444649', '#B4BE7B', '#778284', '#FEFFD3', '#262626', '#DD7C4C', '#CBD88C', '#E1C47D', '#5A5D61', '#D0DB8E', '#8A989A', '#FEFFD3']"
done
