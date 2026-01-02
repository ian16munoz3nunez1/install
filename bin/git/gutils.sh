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

get_line2delete() {
    file=$1
    user=$2
    repo=$3

    current=$(grep -nP "^\[$user\]" $file | cut -d: -f1)
    if [ -z $current ]; then
        echo "User \"$user\" not found"
        exit 1
    fi

    validate_repo $file $user $repo
    if [ $? -ne 0 ]; then
        echo "Repository \"$repo\" not found for user \"$user\""
        exit 1
    fi

    sections=(`grep -nP '^\[\w+\]' $file | cut -d: -f1`)
    for i in ${!sections[@]}; do
        if [ "${sections[$i]}" -eq "$current" ]; then
            next=${sections[$i+1]}
            break
        fi
    done

    matches=$(grep -nP "^$repo\$" $file | cut -d: -f1)
    for match in ${matches[@]}; do
        if [[ -z $next && $match -gt $current ]]; then
            del=$match
            break
        fi

        if [[ $match -gt $current && $match -lt $next ]]; then
            del=$match
            break
        fi
    done

    echo $del
}
