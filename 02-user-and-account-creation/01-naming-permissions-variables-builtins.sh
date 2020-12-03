#!/bin/bash

clear
echo "================================================================================"
echo " 03.a Training: Naming, Permissions, Variables, Builtins"
echo "================================================================================"
printf "\n>>> Entrypoint script loading..."

printf "\n\n>>> Experimenting with variables\n"
VARIABLE_NAME='__content___'
echo "- Geting value using '\$VARIABLE_NAME': $VARIABLE_NAME"
echo "- Geting value using '\${VARIABLE_NAME}': ${VARIABLE_NAME}"

# shellcheck disable=SC2016
echo '- Single quotes variables are not expanded: $VARIABLE_NAME'

echo "- Append text using curly braces \${VARIABLE_NAME}text:"
echo "   ${VARIABLE_NAME}text"

echo "- Do not append text using variable \$VARIABLE_NAMEtext:"
# shellcheck disable=SC2154
echo "   $VARIABLE_NAMEtext    << nothing expands"

NEW_VARIABLE_NAME='___content-new___'
echo "- Combine variables using curly braces \${VARIABLE_NAME}\${NEW_VARIABLE_NAME}:"
echo "   ${VARIABLE_NAME}${NEW_VARIABLE_NAME}"

VARIABLE_NAME='___content-reassigned'
cat << EndOfMessage
- Assign new value to re-assign value:
    VARIABLE_NAME='___content-reassigned'
    'echo \$VARIABLE_NAME:' $VARIABLE_NAME
EndOfMessage

printf "\n================================================================================\n"
echo " Training: end"
echo "================================================================================"


