#/bin/bash

UID=${UID:-1000}
GID=${GID:-100}

grep "${GID}:" /etc/group
[ $? -eq 0 ] || groupadd -g "$GID" users 

GROUP_NAME=`grep "${GID}:" /etc/group | awk -F':' '{print $1}'`
useradd -m -u "$UID" -g ${GROUP_NAME} user

chown -R user:${GROUP_NAME} /vscode

su user /app/code-server.sh