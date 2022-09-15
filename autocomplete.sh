NOTES_DIR="/home/alex/Documents/Notes/"
_notes()
{
  local cur prev opts
  COMPREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"
  prev="${COMP_WORDS[COMP_CWORD-1]}"
  opts="-y -s -d -O -w -r"
  
  case "$prev" in
    -y) COMPREPLY=($(compgen -W "`ls $NOTES_DIR`" "${COMP_WORDS[$COMP_CWORD]}")) && year=$COMPREPLY;;
    -s) COMPREPLY=($(compgen -W "`ls $NOTES_DIR/$year`" "${COMP_WORDS[$COMP_CWORD]}")) && sem=$COMPREPLY;;
    -d) COMPREPLY=($(compgen -W "`ls $NOTES_DIR/$year/$sem`" "${COMP_WORDS[$COMP_CWORD]}")) && dir=$COMPREPLY;;
    -O) COMPREPLY=($(compgen -W "`ls $NOTES_DIR/$year/$sem/$dir/*.pdf | awk -F '/' '{print $NF}' | tr '\n' ' ' && echo`" "${COMP_WORDS[$COMP_CWORD]}"));;
  esac

}
complete -o nospace -F _notes notes
complete -o nospace -F _notes ./notes
