#!/bin/bash

test "$(id -u)" -ne 0 && echo 'Root required' && exit

read -rp 'Username: ' USERNAME
read -rp 'Name: ' NAME
read -rp 'Password: ' PASSWORD

useradd --comment "${NAME}" --create-home "${USERNAME}"

echo "${PASSWORD}"
echo "${PASSWORD}" | passwd --stdin "${USERNAME}"