# iterm2-themes/idleToes.itermcolors
if [ "$#" -ne 1 ]; then
  echo "Please supply the terminal Profile ID(s)"
  exit 1
fi

for PROFILE_ID in "$@"
do
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/foreground-color "'#FFFFFF'"
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/background-color "'#323232'"
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/bold-color "'#FFFFA9'"
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/palette "['#323232', '#D25252', '#7FE173', '#FFC66D', '#4098FF', '#F57FFF', '#BED6FF', '#EEEEEC', '#535353', '#F07070', '#9DFF90', '#FFE48B', '#5EB7F7', '#FF9DFF', '#DCF4FF', '#FFFFFF']"
done
