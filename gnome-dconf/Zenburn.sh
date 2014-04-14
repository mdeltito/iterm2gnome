# iterm2-themes/Zenburn.itermcolors
if [ "$#" -ne 1 ]; then
  echo "Please supply the terminal Profile ID(s)"
  exit 1
fi

for PROFILE_ID in "$@"
do
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/foreground-color "'#DCDCCC'"
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/background-color "'#1F1F1F'"
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/bold-color "'#FFCFAF'"
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/palette "['#000B13', '#E89393', '#9ECE9E', '#F0DFAF', '#8CD0D3', '#C0BED1', '#DFAF8F', '#EFEFEF', '#000B13', '#E89393', '#9ECE9E', '#F0DFAF', '#8CD0D3', '#C0BED1', '#DFAF8F', '#FFFFFF']"
done
