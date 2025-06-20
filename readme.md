<h1 align="center"> Dotfiles for my BSPWM rice </h1>

Hi there, this is something that I have been wanting to do for a while now ever since I started with arch a few years ago.
Finally here are the dotfiles to my very first rice...
<br>

## What extras am I using ?

- [Fish Shell](https://fishshell.com/)
- [Tide Fish Prompt](https://github.com/IlanCosman/tide/tree/main)
- [cava - Music Visualization](https://github.com/karlstav/cava)
- [lavat - terminal lava lamp](https://github.com/AngelJumbo/lavat)
- [yazi - Terminal File explorer](https://github.com/sxyazi/yazi)  :  <sub>Still New to Yazi !!</sub>
- [htop - system monitor](https://htop.dev/)
- [betterlockscreen](https://github.com/betterlockscreen/betterlockscreen)
- [gowall - wallpaper theming](https://github.com/Achno/gowall)

## Picom Compositor prequisites

In order for the given config file to work properly with animations, its recommended you install the [ft-labs-fork](https://github.com/FT-Labs/picom) of picom.

## Polybar Themes and Custom Scripts

Shamefully copy pasted the configs for the [shades theme of polybar](https://github.com/adi1090x/polybar-themes.git) from [adi1090x](https://github.com/adi1090x) lol.

added a few things extra though. The main one being the autorandr display profile menu, you can change the script in 
```
/polybar/shades/scripts/displaymenu.sh
```
for your own set of xrandr configs setup by autorandr

## And for the rest

Pretty straight forward, if you want to use my dots just copy paste the configs to your respective config file locations

usually all of them should be present at 
```
$HOME/.config/whatever-application
```

