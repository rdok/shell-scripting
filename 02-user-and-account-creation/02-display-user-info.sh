#!/bin/bash

printf "User UID: %s\n" "$(id -u)"
printf "\nUsername: %s\n\n" "$(id -un)"

if [[ "${UID}" -eq 0 ]]
then
  echo 'You are root'
else
  echo 'You are not root'
fi
