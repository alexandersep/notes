NOTES_DIR="$HOME/Documents/Notes/"
_notes()
{
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    opts="-y -s -d -O -w -r -p"

    WriteFile="ls *.md"
    OpenPdf="ls *.pdf 2> /dev/null | awk -F '/' '{print $NF}' | tr '\n' ' '"

    case "$prev" in
        -y) COMPREPLY=($(compgen -W "`ls $NOTES_DIR`" "${COMP_WORDS[$COMP_CWORD]}")) && year=$COMPREPLY;;
        -s) COMPREPLY=($(compgen -W "`ls $NOTES_DIR/$year`" "${COMP_WORDS[$COMP_CWORD]}")) && sem=$COMPREPLY;;
        -d) COMPREPLY=($(compgen -W "`ls $NOTES_DIR/$year/$sem`" "${COMP_WORDS[$COMP_CWORD]}")) && dir=$COMPREPLY;;
        -p|-O) COMPREPLY=($(compgen -W "`[[ $(eval "$OpenPdf") == "" ]] || echo $(eval "$OpenPdf")`" "${COMP_WORDS[$COMP_CWORD]}"));;
        -w|-r) COMPREPLY=($(compgen -W "`[[ $(eval "$WriteFile") == "" ]] || echo $(ls *.md)`" "${COMP_WORDS[$COMP_CWORD]}"));;
    esac
}
complete -o nospace -F _notes notes
complete -o nospace -F _notes ./notes
