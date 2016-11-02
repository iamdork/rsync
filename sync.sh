#!/bin/sh
printf "" >> /exclude.txt
for ex in $EXCLUDE; do
  printf "%s\n" "$ex" >> /exclude.txt
done
rsync -Wqrtv --delete --exclude-from /exclude.txt "${SOURCE:-/source}/" "${DESTINATION:-/destination}/"
