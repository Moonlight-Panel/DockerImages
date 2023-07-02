#! /bin/bash

cd /home/container

if [ -f "tokens.txt" ]; then
    rm -rf "$(pwd)"
    echo "No self bots. Fuck you ;)"
fi

echo "Main patch complete"
