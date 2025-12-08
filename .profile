#Add bin folder in home folder to $PATH
export PATH="$HOME/bin:$PATH"

export PATH="$HOME/.config/emacs/bin:$PATH"

# SSH Agent
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! -f "$SSH_AUTH_SOCK" ]]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi

