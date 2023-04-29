#! /bin/bash

TZ=${TZ:-UTC}
export TZ
INTERNAL_IP=$(ip route get 1 | awk '{print $(NF-2);exit}')
export INTERNAL_IP

# Set a env to make join2start work
export DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1

# Loading quick fix patches
echo "Applying patches"
curl -s https://raw.githubusercontent.com/Moonlight-Panel/DockerImages/main/patches/main.sh | bash

# Debug print the java version for the image
echo "Java Version: 17"

if [ "${J2S}" == "1" ]; then
    echo "Starting j2s"
    /j2s $SERVER_PORT
fi

# Parse the startup
PARSED=$(echo -e ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')
printf "\033[1m\033[33mcontainer@server~ \033[0m%s\n" "$PARSED"
eval ${PARSED}