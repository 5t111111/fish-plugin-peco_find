function peco_find -d "Peco source to find file"
    find . -name "*$argv[1]*" | grep -v "/\." | peco_wrapper "FIND>" | read entry

    if test -n "$entry"
        commandline $entry
    end
end
