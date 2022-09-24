FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y  \
    wget \
    git \
    && \
    apt-get clean

COPY ./root/ /

RUN wget -O- https://aka.ms/install-vscode-server/setup.sh | sh

EXPOSE 8000/tcp

VOLUME [ "/data" ]

CMD /entrypoint.sh