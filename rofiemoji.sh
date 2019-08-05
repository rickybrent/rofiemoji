#!/usr/bin/env bash
echo -en "\0markup-rows\x1ftrue\n"
URL="https://raw.githubusercontent.com/Mange/rofi-emoji/master/all_emojis.txt"
DIR="$HOME/.cache"
FILE="$DIR/emojis.pango.txt"

if [ ! -r $FILE ]
then
  if [ ! -d $DIR ]; then mkdir $DIR; fi
  curl $URL | awk  \
    'BEGIN { FS = "[\t]+" } ; {gsub("&[^a-zA-Z]", "\\&amp; "); print $1" <b>"$4"</b> <small>("$5") <small>["$2" / "$3"]</small></small>" }'\
    > $FILE
fi

if [ "$@" ]
then
  smiley=$(echo $@ | cut -d' ' -f1)
  echo -n "$smiley" | xsel -bi
  exit 0
fi

cat $FILE
