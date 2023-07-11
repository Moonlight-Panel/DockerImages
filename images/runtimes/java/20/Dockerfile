FROM        eclipse-temurin:20-alpine

LABEL       author="Daniel Balk" maintainer="daniel@endelon.team"

RUN         apk add --update --no-cache ca-certificates curl unzip tar git jq wget ffmpeg iproute2
RUN         adduser -D -h /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         [ "/bin/ash", "/entrypoint.sh" ]