FROM        ubuntu:latest

LABEL       author="Marcel Baumgartner" maintainer="admin@endelon-hosting.de"

RUN         apt update -y
RUN         apt install ca-certificates tzdata iproute2 -y
RUN			adduser -D -h /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]