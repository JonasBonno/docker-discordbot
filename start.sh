#!/bin/bash

# Install updates
apk update
source ~/.local/share/Red-DiscordBot/redenv/bin/activate
python -m pip install -U pip wheel git+https://github.com/Cog-Creators/Red-DiscordBot.git

# Start server
redbot mybot --token $TOKEN --prefix $PREFIX
