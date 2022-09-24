# docker-vs-code-server

VS Code Server running a docker container.

By running this container you agree to [VS Code Server license](https://code.visualstudio.com/license/server).

## Build

```bash
docker build -t easen/vs-code-server:latest .
```

### Run

```bash
docker run \
    -p 8000:8000 \
    -v <DIR>:/data \
    -e UID=1000 \
    -e GID=1000 \
    easen/vs-code-server:latest
```

Open http://localhost:8000 