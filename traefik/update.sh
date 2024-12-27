#!/bin/bash

# create the url of the files to be updated.
stack=${PWD##*/}
base_url="https://raw.githubusercontent.com/sebastianbrosch/docker-stacks/refs/heads/main/$stack/"
files=("install.sh" "docker-compose.yml")
files_list=$(IFS=,; echo "${files[*]}")

# update all the files in current folder.
curl -s -f --remote-name-all "$base_url{$files_list}"
echo "All files have been updated."
