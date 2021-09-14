#!/bin/sh

# Copy templates to Android Studio in default location

TMP_PATH=`pwd`
TEMPLATES_PATH="$HOME/.android"

DIRS=`find $TMP_PATH -type d -maxdepth 1 -not -name '.*' -not -path $TMP_PATH`

for f in $DIRS
do
  DIR=$(basename $f)
  DEST=$TEMPLATES_PATH/$DIR
  rm -r -f "$DEST"
  cp -r "$f" "$TEMPLATES_PATH"
done