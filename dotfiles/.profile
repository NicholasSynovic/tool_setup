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

# If Intel oneAPI installed, source /opt/intel/oneapi/setvars.sh
if [ -f "/opt/intel/oneapi/setvars.sh" ]; then
. "/opt/intel/oneapi/setvars.sh"
fi
