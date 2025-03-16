if status is-interactive
    set -g fish_greeting
    # Commands to run in interactive sessions can go here
    fish_config prompt choose astronaut
    set -Ux FZF_DEFAULT_OPTS "\
    --color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
    --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
    --color=marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
    --color=selected-bg:#45475a \
    --color=border:#313244,label:#cdd6f4"
    set EDITOR nvim
    set PATH /usr/share/cpptools-debug/bin/ $PATH
    function dotfiles
        /usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME" $argv
    end
    function coding
        cd ~/Documents/code/
        nvim
    end
end
