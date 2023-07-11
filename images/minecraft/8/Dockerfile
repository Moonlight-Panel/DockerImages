FROM        eclipse-temurin:8-alpine

LABEL       author="Marcel Baumgartner" maintainer="admin@endelon-hosting.de"

RUN         apk add --update --no-cache ca-certificates curl unzip tar git jq wget iproute2 bash libc6-compat
RUN         adduser -D -h /home/container container

RUN			wget https://github.com/Moonlight-Panel/Join2Start/releases/download/v1-linux-x64/Join2Start -O /j2s
RUN			chmod +x /j2s

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]