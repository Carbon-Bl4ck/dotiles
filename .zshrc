[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias tuxi='~/tuxi/tuxi'
alias freebee='~/shellscripts/freebee.sh'
alias diary='~/diary/diary'
alias theme='~/theme/theme.sh'
alias jarvis='~/shellscripts/jarvis'
alias bookmenu='bash ~/bookmenu/bookmenu'
alias scihub='~/shellscripts/sci-hub.sh'
alias getbib='~/shellscripts/getbib'
alias ani='~/ani-cli/ani-cli'
alias o='open $(ls | sort -V)'
alias covid='curl -L covid19-cli.wareneutron.com/Ireland'
export EDITOR=vim

if [ $(pwd) = '/Users/cianomahony/Library/Application Support/eDEX-UI' ]; then
	neofetch --ascii_distro arch
fi

export PATH="/usr/local/opt/util-linux/bin:$PATH"
export PATH="/usr/local/opt/util-linux/sbin:$PATH"

transfer(){ if [ $# -eq 0 ];then echo "No arguments specified.\nUsage:\n  transfer <file|directory>\n  ... | transfer <file_name>">&2;return 1;fi;if tty -s;then file="$1";file_name=$(basename "$file");if [ ! -e "$file" ];then echo "$file: No such file or directory">&2;return 1;fi;if [ -d "$file" ];then file_name="$file_name.zip" ,;(cd "$file"&&zip -r -q - .)|curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name"|tee /dev/null,;else cat "$file"|curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name"|tee /dev/null;fi;else file_name=$1;curl --progress-bar --upload-file "-" "https://transfer.sh/$file_name"|tee /dev/null;fi;}
