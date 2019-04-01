FROM ubuntu:14.04


MAINTAINER Jonas Bonno Mikkelsen (https://github.com/JonasBonno)


# Installing dependencies
RUN echo 'deb http://ppa.launchpad.net/fkrull/deadsnakes/ubuntu trusty main' >> /etc/apt/sources.list.d/fkrull-deadsnakes-trusty.list && \
	apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 5BB92C09DB82666C
RUN apt-get update && apt-get install -y \
	libopus0 \
	libssl-dev \
	python3.5 \
	python3-pip \
	git \
	make \
	nasm \
	pkg-config \
	libx264-dev \
	libxext-dev \
	libxfixes-dev \
	zlib1g-dev && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


# Installing more dependencies
RUN alias python=python3.5
RUN git clone https://github.com/FFmpeg/FFmpeg.git /root/FFmpeg
RUN cd /root/FFmpeg && ./configure --enable-nonfree --enable-gpl --enable-libx264 --enable-x11grab --enable-zlib --enable-openssl
RUN cd /root/FFmpeg && make
RUN cd /root/FFmpeg && make install
RUN pip3 install git+https://github.com/Rapptz/discord.py@async
RUN pip3 install requests
RUN pip3 install youtube_dl
RUN pip3 install beautifulsoup4
RUN mkdir -p /usr/local/lib/python3.5/dist-packages
RUN cp -R /usr/local/lib/python3.4/dist-packages/* /usr/local/lib/python3.5/dist-packages
RUN git clone https://github.com/Twentysix26/Red-DiscordBot.git /root/Red-DiscordBot


# Adding startscript and executes it
ADD start.sh /start.sh
RUN chmod 0755 /start.sh
CMD ["bash", "start.sh"]
