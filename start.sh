#!/bin/bash

# Install updates
apk update
pip3 install --upgrade pip Red-DiscordBot

# Start server
redbot mybot --token $TOKEN --prefix $PREFIX
