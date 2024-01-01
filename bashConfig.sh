#!/bin/bash

echo -e "\n# misAlias
alias figletFonts='python3 $HOME/.utils/figletFonts.py'
alias ftpy='python3 $HOME/.utils/ftpy.py'
alias httpy='python3 $HOME/.utils/httpy.py'
alias pydecrypt='python3 $HOME/.utils/pydecrypt.py'
alias pyencrypt='python3 $HOME/.utils/pyencrypt.py'
alias pyframes='python3 $HOME/.utils/pyframes.py'
alias pymedia='python3 $HOME/.utils/pymedia.py'
alias pyqr='python3 $HOME/.utils/pyqr.py'
alias pyunzip='python3 $HOME/.utils/pyunzip.py'
alias pyweb='python3 $HOME/.utils/pyweb.py'
alias pywget='python3 $HOME/.utils/pywget.py'
alias pyzip='python3 $HOME/.utils/pyzip.py'
alias pycamClient='python3 $HOME/.utils/wificam/client.py'
alias pycamServer='python3 $HOME/.utils/wificam/server.py'
alias tcpIpys='python3 $HOME/.tcpIpy/server/main.py'
alias tcpIpyc='python3 $HOME/.tcpIpy/client/main.py'
alias rd='rm -r --interactive=never'
alias guiXampp='sudo /opt/lampp/manager-linux-x64.run'
alias mysql='sudo /opt/lampp/bin/mysql'
alias startmysql='sudo /opt/lampp/lampp startmysql'
alias stopmysql='sudo /opt/lampp/lampp stopmysql'
alias startapache='sudo /opt/lampp/lampp startapache'
alias stopapache='sudo /opt/lampp/lampp stopapache'
alias startXampp='sudo /opt/lampp/lampp start'
alias stopXampp='sudo /opt/lampp/lampp stop'
alias xc8='/opt/microchip/xc8/vX.XX/bin/xc8'
alias boole='wine $HOME/.bin/boole.exe'
alias xiso='$HOME/.bin/xiso/build/extract-xiso'
alias find1Files='find -maxdepth 1 -type f'
alias find2Files='find -maxdepth 2 -type f'
alias find3Files='find -maxdepth 3 -type f'
alias find4Files='find -maxdepth 4 -type f'

# misVariables
export PATH=\"\$PATH\":/home/ianemn/.local/bin\"\"
export TOKENGIT=''
export WINEPREFIX=\$HOME/myapp/prefix
export WINEARCH=win32
export WINEPATH=\$HOME/myapp" >> $HOME/.zshrc

