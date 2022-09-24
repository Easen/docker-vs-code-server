FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y  \
    wget \
    git \
    && \
    apt-get clean

RUN wget -O- https://aka.ms/install-vscode-server/setup.sh | sh

COPY ./root/ /

EXPOSE 8000/tcp

RUN mkdir /vscode

VOLUME [ "/vscode" ]

VOLUME [ "/data" ]

CMD /entrypoint.sh