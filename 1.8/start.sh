#!/bin/bash

# Change folder
cd /root/Red-DiscordBot

# Upgrading pip
pip3 install --upgrade pip

# Updates discord.py and pip modules
pip3 install --upgrade -r requirements.txt
pip3 install --upgrade imgurpython
pip3 install --upgrade youtube_dl

# Updates discordbot from Twentysix GitHub
git pull
python3 launcher.py --update-red

# Start python script
python3 red.py
