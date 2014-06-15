#!/bin/sh

fsw -0 . | while read -d "" i
do
  echo "first: $i"
  if echo $i | grep -q "^.*moon$" > /dev/null ; then
    echo "second: $i"
    # do something
  fi
done




