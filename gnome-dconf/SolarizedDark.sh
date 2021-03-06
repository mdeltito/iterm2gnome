# iterm2-themes/SolarizedDark.itermcolors
if [ "$#" -ne 1 ]; then
  echo "Please supply the terminal Profile ID(s)"
  exit 1
fi

for PROFILE_ID in "$@"
do
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/foreground-color "'#708183'"
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/background-color "'#001E26'"
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/bold-color "'#81908F'"
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/palette "['#002731', '#D01B24', '#728905', '#A57705', '#2075C7', '#C61B6E', '#259185', '#E9E2CB', '#001E26', '#BD3612', '#465A61', '#52676F', '#708183', '#5856B9', '#81908F', '#FCF4DC']"
done
