# Extract almost any archive
function extract --description "Extract an archive by extension"
    switch $argv[1]
        case '*.tar.gz' '*.tgz'
            tar xzf $argv[1]
        case '*.tar.bz2' '*.tbz2'
            tar xjf $argv[1]
        case '*.tar.xz'
            tar xJf $argv[1]
        case '*.zip'
            unzip $argv[1]
        case '*.gz'
            gunzip $argv[1]
        case '*'
            echo "Don't know how to extract $argv[1]"
            return 1
    end
end

