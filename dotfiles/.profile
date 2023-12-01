# Enable GPG output to console
export GPG_TTY=$(tty)

# If running bash, source ~/.bashrc
if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# If running zsh, source ~/.zshrc.
if [ -n "$ZSH_VERSION" ]; then
    if [ -f "$HOME/.zshrc" ]; then
        . "$HOME/.zshrc"
    fi
fi

# If .aliases found, source ~/.aliases
if [ -f "$HOME/.aliases" ]; then
    . "$HOME/.aliases"
fi

# If .pathConfig found, source ~/.pathConfig
if [ -f "$HOME/.pathConfig" ]; then
    . "$HOME/.pathConfig"
fi

# If Linuxbrew is installed, run `brew shellenv`
if [ -s "/home/linuxbrew/.linuxbrew/bin/brew" ]; then
    export LINUXBREW_DIR="/home/linuxbrew/.linuxbrew"
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

# If Guix is installed, source ~/.guix-profile
if [ -f "$HOME/.guix-profile" ]; then
    . "$HOME/.guix-profile"
fi

# If nvm is installed, source nvm config auto-completion
if [ -d "$LINUXBREW_DIR/opt/nvm" ]; then
    . "$LINUXBREW_DIR/opt/nvm/nvm.sh"
    . "$LINUXBREW_DIR/opt/nvm/etc/bash_completion.d/nvm"
    export NVM_DIR="$HOME/.nvm"
fi

# If sdkman is installed, source sdkman config
if [ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]; then
    export SDKMAN_DIR="$HOME/.sdkman"
    . "$SDKMAN_DIR/bin/sdkman/sdkman-init.sh"
fi

# If Intel oneAPI installed, source /opt/intel/oneapi/setvars.sh
if [ -f "/opt/intel/oneapi/setvars.sh" ]; then
. "/opt/intel/oneapi/setvars.sh"
fi
