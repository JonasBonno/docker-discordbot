FROM frolvlad/alpine-bash

MAINTAINER Jonas Bonno Mikkelsen (https://github.com/JonasBonno)

# Installing dependencies
RUN apk update && apk add \
	git \
	python3-dev \
	openjdk11-jre-headless \
	build-base && \
	rm -rf /var/lib/apt/lists/* && \
	wget -O - https://bootstrap.pypa.io/get-pip.py | python3 && \
	rm -rf ~/.cache/pip/*
	
# Installing Red-DiscordBot
RUN pip3 install Red-DiscordBot

# Create and change user to redbot
RUN adduser --disabled-password --shell /bin/bash redbot
USER redbot

# Setup redbot server
RUN { echo "mybot"; echo "~/.local/share/Red-DiscordBot/data/mybot"; echo "Y"; echo "1"; } | redbot-setup

# Exposes volumes
VOLUME ["/home/redbot/.local/share/Red-DiscordBot/data/mybot"]

# Setting workdir
WORKDIR /home/redbot/.local/share/Red-DiscordBot/data/mybot

# Change user backup to root
USER root

# Adding startscript and executes it
ADD start.sh /start.sh
RUN chmod 0755 /start.sh
CMD ["bash", "/start.sh"]
