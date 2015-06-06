### alias ###
alias PR='cd /mnt/program/'
alias PY='cd /mnt/program/Python/'
alias TEX='cd /mnt/program/Tex/'
alias HDD1='cd /mnt/hdd1/'
alias lmk='latexmk'
alias raspi='ssh 192.168.11.11 -l pi -p 55522' #-i /home/ryosuke/.ssh/id_rsa-raspi'
alias hamachi='ssh 25.68.146.177 -l pi -p 55522' #-i /home/ryosuke/.ssh/id_rsa-raspi'
alias tmux='tmux -2'
alias open='xdg-open'
alias crontab='crontab -i'
alias rm='rm -i'
alias cp='cp -i'
alias sudo='sudo -E '
# alias mntuec='sudo mount -t davfs -o uid=1000,gid=1000 https://uecdisk.cc.uec.ac.jp/remote.php/webdav/ /mnt/uecdisk/'
alias dropbox='/home/ryosuke/bin/Dropbox-Uploader/dropbox_uploader.sh'
alias mnthdd1='sudo sshfs pi@192.168.11.11:/mnt/hdd1 /mnt/hdd1 -p 55522 -o allow_other'
alias subl='sublime'
export PATH=$PATH:/sbin:/home/ryosuke/bin

### Setup ssh-agent ###
#if [ -f ~/.ssh-agent ]; then
#       . ~/.ssh-agent > /dev/null
#fi
#if [ -z "$SSH_AGENT_PID" ] || ! kill -0 $SSH_AGENT_PID > /dev/null 2>&1; then
#       ssh-agent > ~/.ssh-agent
#       . ~/.ssh-agent > /dev/null
#fi
#if ! ssh-add -l | grep id_rsa-raspi > /dev/null ; then
#	ssh-add /home/ryosuke/.ssh/id_rsa-raspi
#fi

### tmux###
if [ -z "$TMUX" -a -z "$STY" ]; then
	if type tmux >/dev/null 2>&1; then
		if tmux has-session && tmux list-sessions | /usr/bin/grep -qE '.*]$'; then
			tmux attach && echo "tmux attached session "
        else
			tmux new-session && echo "tmux created new session"
		fi
	fi
fi 
