# dotFiles
Dot files for arch linux settings

to run setup your computer just run `setup.sh` inside the repository folder.

Optionaly you can compy and replance your `~/Xresources` by the one avaliable here.

Posteriorly I will setup the nexts developer programs.

### Installed programs and tools

Package names:

```
yay
bash-completion
visual-studio-code-bin
feh
acpi
ttf-font-awesome-4
openssh
arandr
redshift
lm_sensors
python-pywal
spotify
Anaconda3
```

### Troubleshooting

>Anaconda can cause terminal problems like when we type `clear` command  can return a error of rxvt-unicode-256color

>To solve it you can copy the file `/usr/share/terminfo/r/rxvt-unicode-256color` to your Anaconda path.

>For instance, i type in my terminal `cp /usr/share/terminfo/r/rxvt-unicode-256color ~/anaconda3/share/terminfo/r/`