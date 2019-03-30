# 1) Copy files in directory 
# 2) Send files | Get LOG
# 3) Implement in i3 at start

 LOG=~/scripts/configs/log.txt
 DATE=date
 backup () {
 cp ~/scripts/github.sh ~/scripts/configs/scripts/github.sh 
 cp ~/scripts/todo_run.sh ~/scripts/configs/scripts/todo_run.sh 

 cp ~/.config/i3/config ~/scripts/configs/i3wm/config
 cp ~/.vimrc ~/scripts/configs/vim/vimrc
 cp ~/.zshrc ~/scripts/configs/zsh/zshrc
 cp ~/.config/qutebrowser/config.py ~/scripts/configs/qutebrowser/config.py
 cp ~/.tmux.conf ~/scripts/configs/tmux/tmux.conf
}

 cd ~/scripts/configs  

 date >> $LOG 
 git diff

 backup >> $LOG 2>&1
 git add . >> $LOG 2>&1
 git commit -m "$DATE" >> $LOG 2>&1
 git push >> $LOG 2>&1
 echo "Done!\n" >> $LOG 

 cat $LOG
 read any_key

