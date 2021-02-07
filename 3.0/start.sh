#!/bin/bash

# Install updates as root user
apk update && rm -rf /var/lib/apt/lists/*
pip3 install --upgrade pip && rm -rf ~/.cache/pip/*

# Install updates as redbot user
su -s /bin/bash -c "pip3 install --upgrade pip Red-DiscordBot" -m "redbot"
su -s /bin/bash -c "rm -rf ~/.cache/pip/*" -m "redbot"

# Start server as redbot user
su -s /bin/bash -c "~/.local/bin/redbot mybot" -m "redbot"
