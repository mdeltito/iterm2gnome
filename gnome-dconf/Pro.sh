# iterm2-themes/Pro.itermcolors
if [ "$#" -ne 1 ]; then
  echo "Please supply the terminal Profile ID(s)"
  exit 1
fi

for PROFILE_ID in "$@"
do
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/foreground-color "'#F2F2F2'"
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/background-color "'#000000'"
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/bold-color "'#FFFFFF'"
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/palette "['#000000', '#990000', '#00A600', '#999900', '#1F08DB', '#B200B2', '#00A6B2', '#BFBFBF', '#666666', '#E50000', '#00D900', '#E5E500', '#0000FF', '#E500E5', '#00E5E5', '#E5E5E5']"
done
