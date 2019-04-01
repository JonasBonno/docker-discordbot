FROM ubuntu:14.04


MAINTAINER Jonas Bonno Mikkelsen (https://github.com/JonasBonno)


# Installing dependencies
RUN echo "deb http://ppa.launchpad.net/fkrull/deadsnakes/ubuntu trusty main" > /etc/apt/sources.list.d/fkrull-deadsnakes-trusty.list \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 5BB92C09DB82666C
RUN echo "deb http://ppa.launchpad.net/mc3man/trusty-media/ubuntu trusty main" > /etc/apt/sources.list.d/mc3man-trusty-media-trusty.list \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 90BD7EACED8E640A
	
	
RUN apt-get update && apt-get install -y \
	software-properties-common \
	python-software-properties \
	ffmpeg \
	libopus0 \
	libssl-dev \
	libffi-dev \
	libopus-dev \
	tar \
	git \
	make \
	nasm \
	pkg-config \
	libx264-dev \
	libxext-dev \
	libxfixes-dev \
	zlib1g-dev \
	wget \
	build-essential \
	unzip \
	openssl \
	python3.5-dev && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


# Installing more dependencies
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN sudo python3.5 get-pip.py
RUN pip3.5 install git+https://github.com/Rapptz/discord.py@async
RUN pip3.5 install youtube_dl
RUN pip3.5 install imgurpython
RUN git clone -b develop --single-branch https://github.com/Twentysix26/Red-DiscordBot.git /root/Red-DiscordBot


# Adding startscript and executes it
ADD start.sh /start.sh
RUN chmod 0755 /start.sh
CMD ["bash", "start.sh"]
