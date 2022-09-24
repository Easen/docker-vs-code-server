FROM ubuntu:20.04

RUN apt-get update && apt-get install -y  wget && apt-get clean

RUN wget -O- https://aka.ms/install-vscode-server/setup.sh | sh

EXPOSE 8000/tcp

VOLUME [ "/data" ]

CMD code-server \
    --accept-server-license-terms \
    --disable-telemetry \
    serve-local \
    --host 0.0.0.0 \
    --without-connection-token
