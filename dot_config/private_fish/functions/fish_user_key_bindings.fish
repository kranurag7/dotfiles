# function fish_user_key_bindings
# end

function fish_user_key_bindings -d "Configures keybindings"
    bind --preset \cj end-of-line
    bind \cF "zi; commandline -f repaint"
end

if command -v fzf &> /dev/null
    fzf_key_bindings
end