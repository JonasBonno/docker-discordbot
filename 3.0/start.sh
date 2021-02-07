#!/bin/bash

# Install updates
apk update && rm -rf /var/lib/apt/lists/*
pip3 install --upgrade pip Red-DiscordBot && rm -rf ~/.cache/pip/*

# Start server as redbot user
su -s /bin/bash -c "redbot mybot" -m "redbot"
