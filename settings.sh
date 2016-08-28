#!/bin/bash

. ./common.sh

JOB_NAME='Sublime#settings'

begin

echo -e "Copying '*.sublime-settings' to '${USER_DIR}'\n"

cp ./settings/*.sublime-settings "${USER_DIR}"

end
