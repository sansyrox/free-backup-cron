#!/bin/bash
#0 5 * * 1 tar -zcf /Users/ssanskar_`date`.tgz /Users/ssanskar

currDir=$(pwd)
UDS_DIR=$currDir/uds
cd /Users

tar -cvf "backup-$(date '+%Y-%m-%d').tar.gz" /Users/$USER
cd $(currDir)


