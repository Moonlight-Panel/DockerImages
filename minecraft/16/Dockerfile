FROM        openjdk:16-slim

LABEL       author="Marcel Baumgartner" maintainer="admin@endelon-hosting.de"

RUN         apt update -y \
						&& apt install -y curl wget ca-certificates fontconfig tzdata iproute2 libfreetype6 \
						&& useradd -d /home/container -m container

RUN			wget https://github.com/Moonlight-Panel/Join2Start/releases/download/v1-linux-x64/Join2Start -O /j2s
RUN			chmod +x /j2s

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]