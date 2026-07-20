#!/bin/zsh

if [ -f /etc/init.lock ]; then
    git clone https://github.com/ian16munoz3nunez1/nvim.git ~/.config/nvim/
    # git clone https://github.com/microsoft/java-debug.git ~/.local/share/java-debug
    # cd ~/.local/share/java-debug && ./mvnw clean install

    ranger --copy-config=all

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

    git clone git@github.com:zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
    git clone git@github.com:zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

    # Manual installation
    # mkdir -p ~/.zsh
    # git clone git@github.com:zsh-users/zsh-autosuggestions.git ~/.zsh/zsh-autosuggestions
    # echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc

    n=$(grep -nP '^ZSH_THEME=' ~/.zshrc | cut -d: -f1)
    sed -i "${n}d" ~/.zshrc
    sed -i "$((n-1)) a ZSH_THEME='agnoster'" ~/.zshrc

    n=$(grep -nP '^plugins=' ~/.zshrc | cut -d: -f1)
    sed -i "${n}d" ~/.zshrc
    sed -i "$((n-1)) a plugins=(git zsh-autosuggestions zsh-syntax-highlighting)" ~/.zshrc

    source ~/.zshrc
    rm /etc/init.lock
fi

tail -f /dev/null
