#!/bin/bash

. ./common.sh

JOB_NAME='Sublime#aliases'

ALIAS_NAME='sublime'
ALIAS_PATH=/usr/local/bin/${ALIAS_NAME}

begin

echo -e "Creating alias '${ALIAS_NAME}' at '${ALIAS_PATH}'\n"

[ -L "${ALIAS_PATH}" ] && sudo rm -f $ALIAS_PATH

sudo ln -s "${EXEC_PATH}" $ALIAS_PATH

end
