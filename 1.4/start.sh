#!/bin/bash


# Updates discordbot from Twentysix GitHub
rm -Rf /root/Red-DiscordBot/data
cd /root/Red-DiscordBot && git pull


# Updates discord.py
pip3 install --upgrade git+https://github.com/Rapptz/discord.py@async


# Creates symbolic link to config
ln -s /data /root/Red-DiscordBot/data


# Download default data folder if empty
if [[ ! -d /root/Red-DiscordBot/data/trivia ]]; then
	echo "data empty"
	git clone -b develop --single-branch https://github.com/Twentysix26/Red-DiscordBot.git /tmp/Red-DiscordBot
	cp -R /tmp/Red-DiscordBot/data/* /data
	rm -Rf /tmp/Red-DiscordBot
else
	echo "data ok"
fi


# Start python script
cd /root/Red-DiscordBot && python3.5 red.py
