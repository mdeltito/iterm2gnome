# iterm2-themes/Kibble.itermcolors
if [ "$#" -ne 1 ]; then
  echo "Please supply the terminal Profile ID(s)"
  exit 1
fi

for PROFILE_ID in "$@"
do
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/foreground-color "'#F7F7F7'"
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/background-color "'#0E100A'"
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/bold-color "'#CA631D'"
  dconf write /org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/palette "['#4D4D4D', '#C70031', '#29CF13', '#D8E30E', '#3449D1', '#8400FF', '#0798AB', '#E2D1E3', '#5A5A5A', '#F01578', '#6CE05C', '#F3F79E', '#97A4F7', '#C495F0', '#68F2E0', '#FFFFFF']"
done
