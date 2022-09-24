#/bin/bash

UID=${UID:-1000}
GID=${GID:-1000}

groupadd -g "$GID" group && \
    useradd -m -u "$UID" -g group user

chown -R user:group /vscode

su user /app/code-server.sh