if status is-interactive
    # Commands to run in interactive sessions can go here
    eval "$(mise activate fish)"
    fortune -a | cowsay -f (cowsay -l | tail -n +2 | tr ' ' '\n' | shuf -n 1)
end

set -Ux FLYCTL_INSTALL $HOME/.fly
fish_add_path -U ~/.fly/bin
fish_add_path -U /usr/local/go/bin
fish_add_path -U ~/osdev/cross/bin
fish_add_path -U ~/.config/herd-lite/bin
export PATH="$HOME/.local/bin:$PATH"
