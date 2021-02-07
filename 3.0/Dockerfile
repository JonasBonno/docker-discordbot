FROM frolvlad/alpine-bash

MAINTAINER Jonas Bonno Mikkelsen (https://github.com/JonasBonno)

# Installing dependencies
RUN apk update && apk add \
	git \
	python3-dev \
	openjdk11-jre-headless \
	build-base && \
	rm -rf /var/lib/apt/lists/*

# Installing PIP
RUN wget -O - https://bootstrap.pypa.io/get-pip.py | python3

# Create and change user
RUN adduser -D redbot
USER redbot

# Installing Red-DiscordBot
RUN pip3 install Red-DiscordBot && { echo "mybot"; echo "$HOME/.local/share/Red-DiscordBot/data/mybot"; echo "Y"; echo "1"; } | redbot-setup

# Exposes volumes
VOLUME ["$HOME/.local/share/Red-DiscordBot/data/mybot"]

# Setting workdir
WORKDIR $HOME/.local/share/Red-DiscordBot/data/mybot

# Start server
CMD ["bash", "redbot mybot"]
