#!/bin/bash

. ./common.sh

JOB_NAME='Sublime#license'
LICENSE_DIR=~/Dropbox/Licenses

begin

echo -e "Copying '$LICENSE_DIR' to '${SETTINGS_DIR}'\n"

cp ${LICENSE_DIR}/License.sublime_license "${SETTINGS_DIR}"

end
