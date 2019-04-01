#!/bin/bash

# Updates discordbot from Twentysix GitHub
git pull

# Updates discord.py
pip3 install --upgrade git+https://github.com/Rapptz/discord.py@async
pip3 install -U git+https://github.com/Rapptz/discord.py@master#egg=discord.py[voice]

# Updates pip modules
pip3 install --upgrade beautifulsoup4 imgurpython youtube_dl PyNaCl

# Start python script
python3.5 red.py
