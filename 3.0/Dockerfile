FROM frolvlad/alpine-bash

MAINTAINER Jonas Bonno Mikkelsen (https://github.com/JonasBonno)

# Installing dependencies
RUN apk update && apk add \
	git \
	python3-dev \
	py3-pip \
	openjdk11-jre-headless \
	build-base && \
	rm -rf /var/lib/apt/lists/*

# Installing Red-DiscordBot
RUN pip3 install Red-DiscordBot

# Create and change user
RUN adduser --disabled-password --shell /bin/bash redbot
USER redbot

# Setup redbot server
RUN { echo "mybot"; echo "$HOME/.local/share/Red-DiscordBot/data/mybot"; echo "Y"; echo "1"; } | redbot-setup

# Exposes volumes
VOLUME ["$HOME/.local/share/Red-DiscordBot/data/mybot"]

# Setting workdir
WORKDIR $HOME/.local/share/Red-DiscordBot/data/mybot

# Start server
CMD ["bash", "redbot mybot"]
