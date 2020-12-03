#!/bin/bash

echo "UID: ${UID}"


DEFAULT_UID=501
test ${UID} -ne "${DEFAULT_UID}" && echo "Unsual UID: ${UID}" && exit 1


USERNAME="$(id -un)"
if [[ "${?}" -ne 0 ]]; then
  echo 'The id command did not execute successfully. Exiting.'
fi

echo "Username: ${USERNAME}"


USERNAME_CHECKER='rdok'

if [[ "${USERNAME}" != "${USERNAME_CHECKER}" ]]; then
  printf "Expected %s. Found %s.\n" "${USERNAME_CHECKER}" "${USERNAME}"
fi

if [[ "${USERNAME}" = "${USERNAME_CHECKER}" ]]; then
  printf "Expected %s. Found %s.\n" "${USERNAME_CHECKER}" "${USERNAME}"
fi


