#!/bin/bash

# Upgrading pip
pip3 install --upgrade pip

# Updates discord.py and pip modules
pip3 install install --upgrade -r requirements.txt
pip3 install --upgrade imgurpython

# Updates discordbot from Twentysix GitHub
git pull

# Start python script
python3.5 red.py
