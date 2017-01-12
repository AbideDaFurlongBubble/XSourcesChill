[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
[[ -f ~/.Xcolors ]] && xrdb -merge -I$HOME ~/.Xcolors
xrandr --auto
xrandr --dpi 96
feh --bg-scale --randomize ~/Backgrounds/
exec i3
