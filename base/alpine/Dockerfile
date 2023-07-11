FROM        alpine:latest

LABEL       author="Marcel Baumgartner" maintainer="admin@endelon-hosting.de"

RUN         apk add --update --no-cache ca-certificates tzdata iproute2
RUN			adduser -D -h /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         [ "/bin/ash", "/entrypoint.sh" ]