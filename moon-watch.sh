#!/bin/sh


TARGET_DIR=$2
if [ -z "$TARGET_DIR" ]; then TARGET_DIR="`dirname "$0"`"; fi
TARGET_DIR=$(cd "$TARGET_DIR" && pwd)

SRC_DIR=$1
if [ -z "$SRC_DIR" ]; then SRC_DIR="`dirname "$0"`"; fi
SRC_DIR=$(cd "$SRC_DIR" && pwd)

echo "moon-watch start: $SRC_DIR ==> $TARGET_DIR"

fsw -0 $SRC_DIR | while read -d "" i
do
  if echo $i | grep -q "^.*moon$" > /dev/null ; then
    PART=$(echo $i | sed "s|$SRC_DIR|$EMPTY|g")
    DEST="`dirname $TARGET_DIR$PART`"
    RESULT_FILENAME=$(echo "`basename $i`" | sed "s/\.moon/\.lua/g")
    cd "`dirname $i`"
    echo "dest: $DEST"
    moonc -t $DEST "`basename $i`" && echo "=> $DEST/$RESULT_FILENAME (`date`)"
    if [ $? != 0 ]; then tput bel; fi  # beep when compile failed
  fi
done




