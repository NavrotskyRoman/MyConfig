 LOG=~/scripts/configs/log.txt
 DATE=$( date )
 backup () {
 cp ~/scripts/github.sh ~/scripts/configs/scripts/github.sh 
 cp ~/scripts/todo_run.sh ~/scripts/configs/scripts/todo_run.sh 

 cp ~/.config/i3/config ~/scripts/configs/i3wm/config
 cp ~/.config/dunst/dunstrc ~/scripts/configs/dunst/dunstrc

 cp ~/.config/polybar/config ~/scripts/configs/polybar/config
 cp ~/.config/polybar/polybar.sh ~/scripts/configs/polybar/polybar.sh
 cp ~/.config/polybar/scripts/info-hackspeed.sh ~/scripts/configs/polybar/info-hackspeed.sh 
 cp ~/.config/polybar/scripts/gpu_usage.sh ~/scripts/configs/polybar/gpu_usage.sh 

 cp ~/.config/conky/conky.conf ~/scripts/configs/conky/conky.conf
 cp ~/.config/conky/conky2.conf ~/scripts/configs/conky/conky2.conf
 cp ~/.config/conky/conky_start.sh ~/scripts/configs/conky/conky_start.sh

 cp ~/.vimrc ~/scripts/configs/vim/vimrc
 cp ~/.zshrc ~/scripts/configs/zsh/zshrc
 cp ~/.config/qutebrowser/config.py ~/scripts/configs/qutebrowser/config.py
 cp ~/.tmux.conf ~/scripts/configs/tmux/tmux.conf
 cp ~/Wallpaper/wallpaper.sh ~/scripts/configs/wallpaper.sh
}

cd ~/scripts/configs  

LOGG="$( date ) "
LOGG="$LOGG \n git diff: $(git diff 2>&1)"
LOGG="$LOGG \n backup: $(backup 2>&1)"
LOGG="$LOGG \n git add: $(git add . 2>&1)"
LOGG="$LOGG \n git commit: $(git commit -m "$DATE" 2>&1)"
LOGG="$LOGG \n git push: $(git push 2>&1)"
LOGG="$LOGG \n Done! \n"
echo  >> $LOG 

 echo $LOGG
 echo $LOGG >> $LOG 2>&1
 notify-send "$LOGG"
 echo "Press what you want!"
 read any_key
