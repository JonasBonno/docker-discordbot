FROM alpine:3.19

MAINTAINER Jonas Bonno Mikkelsen (https://github.com/JonasBonno)

ENV TOKEN=""
ENV PREFIX="!"

# Create redbot user
RUN addgroup redbot && adduser -D redbot -G redbot

# Installing dependencies
RUN apk update && \
        apk add --no-cache bash gawk sed grep bc gcompat coreutils git python3-dev py3-pip openjdk11-jre-headless build-base libffi-dev && \
        rm -rf /root/.cache/pip/*

ADD start.sh /home/redbot/start.sh
RUN chown redbot:redbot /home/redbot/start.sh && \
        chmod +x /home/redbot/start.sh

# Installing Red-DiscordBot
USER redbot
RUN mkdir -p ~/.local/share/Red-Discord && \
        python3 -m venv ~/.local/share/Red-DiscordBot/redenv && \
        source ~/.local/share/Red-DiscordBot/redenv/bin/activate && \
        python -m pip install -U pip wheel git+https://github.com/Cog-Creators/Red-DiscordBot.git

# Setup redbot server
RUN ~/.local/share/Red-DiscordBot/redenv/bin/redbot-setup --no-prompt --instance-name mybot

# Exposes volumes
VOLUME ["/home/redbot/.local/share/Red-DiscordBot/data/mybot"]

# Setting workdir
WORKDIR /home/redbot/.local/share/Red-DiscordBot/data/mybot

# Setting default command
CMD ["bash", "/home/redbot/start.sh"]
