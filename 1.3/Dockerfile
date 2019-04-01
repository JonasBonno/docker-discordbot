FROM python:latest


MAINTAINER Jonas Bonno Mikkelsen (https://github.com/JonasBonno)


# Installing dependencies
RUN echo "deb http://http.debian.net/debian jessie-backports main" >> /etc/apt/sources.list
RUN apt-get update && apt-get install -y --no-install-recommends \
	ffmpeg && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


# Installing more dependencies
RUN pip install \
	beautifulsoup4 \
	git+https://github.com/Rapptz/discord.py@async \
	imgurpython \
	youtube_dl
RUN git clone -b develop --single-branch https://github.com/Twentysix26/Red-DiscordBot.git /root/Red-DiscordBot


# Adding startscript and executes it
ADD start.sh /start.sh
RUN chmod 0755 /start.sh
CMD ["bash", "start.sh"]
