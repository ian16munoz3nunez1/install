validate_section() {
    local file=$1
    local section=$2

    grep -inP "\[$section\]" $file &>/dev/null
    if [ $? -eq 0 ]; then
        return 0
    else
        echo -e "\n[$section]" >> $file
        return 1
    fi
}

get_repos() {
    local file=$1
    local section=$2
    local current_section=""

    while IFS= read -r line || [[ -n "$line" ]]; do
        line=$(echo "$line" | sed -e 's/^\s*//' -e 's/\s*$//' | sed 's/#.*$//')

        if [[ -z "$line" ]]; then
            continue
        fi

        if [[ "$line" =~ ^\[(.*)\]$ ]]; then
            current_section="${BASH_REMATCH[1]}"
            continue
        fi

        if [[ "$current_section" == "$section" ]]; then
            echo "$line"
        fi
    done < "$file"
}

validate_repo() {
    local file=$1
    local section=$2
    local repo2add=$3

    local repos=$(get_repos $file $section)

    local repo=""
    for repo in ${repos[@]}
    do
        if [[ "$repo" == "$repo2add" ]]; then
            return 0
        fi
    done
    return 1
}

get_cmp_repo() {
    if [[ "$1" =~ \.git$ ]]; then
        echo "$1" | sed "s/\.git$//"
    fi

    if [[ ! "$1" =~ \.git$ ]]; then
        echo "$1" | sed "s/$/\.git/"
    fi
}
