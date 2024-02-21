if command -v rg &> /dev/null
    abbr -ag rgg 'rg -g !vendor'
    abbr -ag rgh 'rg --hidden'
    abbr -ag rgf 'rg -F'
end

