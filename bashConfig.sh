#!/bin/bash

shell=$(echo $SHELL | xargs basename)

if [ $shell == "zsh" ];
then
    shellFile="$HOME/.zshrc"
elif [ $shell == "bash" ];
then
    shellFile="$HOME/.bashrc"
else
    echo "Shell don't recognize"
    exit 1
fi

[ ! -d $HOME/.utils ] && git clone git@github.com:ian16munoz3nunez1/utils $HOME/.utils
[ ! -d $HOME/.tcpIpy ] && git clone git@github.com:ian16munoz3nunez1/tcpIpy $HOME/.tcpIpy

echo -e "\n# systemAliases
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias diff='diff --color=auto'
alias ip='ip --color=auto'
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

# misAlias
alias pyenv='source ~/.python/bin/activate'
alias rd='rm -r --interactive=never'
# alias guiXampp='sudo /opt/lampp/manager-linux-x64.run'
# alias mysql='sudo /opt/lampp/bin/mysql'
# alias startmysql='sudo /opt/lampp/lampp startmysql'
# alias stopmysql='sudo /opt/lampp/lampp stopmysql'
# alias startapache='sudo /opt/lampp/lampp startapache'
# alias stopapache='sudo /opt/lampp/lampp stopapache'
# alias startXampp='sudo /opt/lampp/lampp start'
# alias stopXampp='sudo /opt/lampp/lampp stop'
alias boole='wine $HOME/.bin/boole.exe 2>/dev/null'
alias xiso='$HOME/.bin/xiso/build/extract-xiso'
alias cmd='wineconsole 2>/dev/null &'
alias au3='wine $HOME/myapp/prefix/drive_c/Program\ Files/AutoIt3/AutoIt3.exe'
alias find1Files='find -maxdepth 1 -type f'
alias find2Files='find -maxdepth 2 -type f'
alias find3Files='find -maxdepth 3 -type f'
alias find4Files='find -maxdepth 4 -type f'
alias find1Dirs='find -maxdepth 1 -type d'
alias find2Dirs='find -maxdepth 2 -type d'
alias find3Dirs='find -maxdepth 3 -type d'
alias find4Dirs='find -maxdepth 4 -type d'
alias bat='batcat'
alias rpi='ssh ianemn@rpi' # rpi: 192.168.1.128
alias wrpi='ssh ianemn@wrpi' # wrpi: 4.4.4.4

# misVariables
export JAVA_HOME=\"/usr/lib/jvm/java-21-openjdk-amd64\"
export PATH=\"\$PATH\":$HOME/.local/bin\"\"
export PATH=\"\$PATH\":$HOME/.python/bin\"\"
export PATH=\"\$PATH\":/opt/microchip/xc8/vX.XX/bin\"\"
export PATH=\"\$PATH\":$HOME/.utils\"\"
export PATH=\"\$PATH\":$HOME/.tcpIpy\"\"
export PATH=\"\$PATH\":/snap/bin\"\"
export PATH=\"$PATH\":$JAVA_HOME\"\"
export TOKENGIT=''
export WINEPREFIX=\$HOME/myapp/prefix
export WINEARCH=win32
export WINEPATH=\$HOME/myapp\n
unset _JAVA_OPTIONS" >> $shellFile

