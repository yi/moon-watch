#!/bin/sh


TARGET_DIR=$2
if [ -z "$TARGET_DIR" ]
then
	TARGET_DIR="`dirname "$0"`"
fi
TARGET_DIR=$(cd "$TARGET_DIR" && pwd)

#echo "TARGET_DIR: $TARGET_DIR"

SRC_DIR=$1
if [ -z "$SRC_DIR" ]
then
	SRC_DIR="`dirname "$0"`"
fi
SRC_DIR=$(cd "$SRC_DIR" && pwd)

#echo "SRC_DIR: $SRC_DIR"

echo "moon-watch start: $SRC_DIR ==> $TARGET_DIR"

fsw -0 $SRC_DIR | while read -d "" i
do
  if echo $i | grep -q "^.*moon$" > /dev/null ; then
    part=$(echo $i | sed "s|$SRC_DIR|$EMPTY|g")
    dest="`dirname $TARGET_DIR$part`"
    cd "`dirname $i`"
    moonc -t $dest "`basename $i`" && echo "==> $dest/"
  fi
done




