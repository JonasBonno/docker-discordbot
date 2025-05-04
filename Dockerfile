FROM alpine:3.21

MAINTAINER Jonas Bonno Mikkelsen (https://github.com/JonasBonno)

ENV TOKEN=""
ENV PREFIX="!"

# Installing dependencies
RUN apk update && \
	apk add --no-cache bash gawk sed grep bc gcompat coreutils git python3-dev openjdk11-jre-headless build-base libffi-dev && \
	wget -O - https://bootstrap.pypa.io/get-pip.py | python3 && \
	rm -rf /root/.cache/pip/*

# Installing Red-DiscordBot
RUN pip3 install Red-DiscordBot

# Setup redbot server
RUN { echo "mybot"; echo "/root/.local/share/Red-DiscordBot/data/mybot"; echo "Y"; echo "1"; } | redbot-setup

# Exposes volumes
VOLUME ["/root/.local/share/Red-DiscordBot/data/mybot"]

# Setting workdir
WORKDIR /root/.local/share/Red-DiscordBot/data/mybot

# Adding startscript and executes it
ADD start.sh /start.sh
RUN chmod 0755 /start.sh
CMD ["bash", "/start.sh"]
