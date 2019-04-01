#!/bin/bash


# Updates discordbot from Twentysix GitHub
rm /root/Red-DiscordBot/json
cd /root/Red-DiscordBot && git pull

# Creates symbolic link to config
ln -s /json /root/Red-DiscordBot


# Start python script
cd /root/Red-DiscordBot && python3.5 red.py
