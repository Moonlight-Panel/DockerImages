FROM        eclipse-temurin:16

LABEL       author="Daniel Balk" maintainer="daniel@endelon.team"

RUN         apt update -y \
						&& apt install -y curl wget ca-certificates fontconfig tzdata iproute2 libfreetype6 ffmpeg

RUN         useradd -m -d /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]