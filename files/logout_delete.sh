#!/bin/bash

directory_path="/home/user/.ssh"

# shellcheck disable=SC2164
cd "$directory_path"

# iterate over all files in the directory
for file in *; do
  if [ -f "$file" ] && [ "$file" != "authorized_keys" ] && [ "$file" != "known_hosts" ]; then
    rm "$file"
    echo "File $file deleted from $directory_path."
  fi
done
