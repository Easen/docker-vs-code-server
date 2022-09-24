#/bin/bash

UID=${UID:-1000}
GID=${GID:-1000}

groupadd -g "$GID" group && \
    useradd -m -u "$UID" -g group user

su user /app/code-server.sh