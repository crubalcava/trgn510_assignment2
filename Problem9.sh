#!/usr/bin/bash

FILES=("$@")
echo $FILES $@
for f in $FILES
do
  [[ -e $f ]] || {
    printf '%s no such file or directory skipping...\n' "$f"
    continue
  }
  printf 'Processing %s file...\n' "$f"
  byte_count=$(wc -c < "$f")
  if ((  byte_count > 1000 )); then
    printf 'Skipping %s file. \n' "$f"
  elif (( byte_count == 1000 )); then
    printf '%s has %d bytes.\n' "$f" "$byte_count"
  else
    printf '%s has less than 1000 bytes.\n' "$f"
  fi
done
