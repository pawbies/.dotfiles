function fish_prompt
    # Username + Host in soft pink
    set_color FF9AD5
    echo -n "♥︎ "(whoami)

    # Separator
    set_color white
    echo -n " @ "

    # Hostname in lavender
    set_color CBA6F7
    echo -n (hostname)

    # Newline for clarity
    # echo # nah uh
    echo -n " "

    # Current directory in pastel cyan
    set_color 94E2D5
    echo -n (prompt_pwd)

    # Git branch if available
    set_color F5C2E7
    if type -q git
      # set branch (git rev-parse --abbrev-ref HEAD ^/dev/null 2>/dev/null)
        set branch (git rev-parse --abbrev-ref HEAD 2>/dev/null)
        if test -n "$branch"
            echo -n " ✿ $branch"
        end
    end

    # Final symbol in pink
    set_color FF9AD5
    echo -n " ➜ "

    # Reset color
    set_color normal
end
