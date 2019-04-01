FROM ubuntu:15.10


MAINTAINER Jonas Bonno Mikkelsen (https://github.com/JonasBonno)


# Installing dependencies
RUN echo 'deb http://ppa.launchpad.net/mc3man/ffmpeg-test1/ubuntu/ wily main' >> /etc/apt/sources.list.d/mc3man-trusty-media-trusty.list && \
	apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 90BD7EACED8E640A
RUN apt-get update && apt-get install -y \
	software-properties-common \
	python-software-properties \
	ffmpeg \
	libopus0 \
	libssl-dev \
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
	openssl && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


# Installing more dependencies
RUN mkdir /root/pythonbuild
RUN cd /root/pythonbuild && wget "https://www.python.org/ftp/python/3.5.1/Python-3.5.1.tgz"
RUN cd /root/pythonbuild && tar xvfz Python-3.5.1.tgz && rm Python-3.5.1.tgz
RUN cd /root/pythonbuild/Python-3.5.1 && ./configure
RUN cd /root/pythonbuild/Python-3.5.1 && make -j2
RUN cd /root/pythonbuild/Python-3.5.1 && make install
RUN pip3.5 install git+https://github.com/Rapptz/discord.py@async
RUN pip3.5 install youtube_dl
RUN pip3.5 install beautifulsoup4
RUN pip3.5 install imgurpython
RUN git clone -b develop --single-branch https://github.com/Twentysix26/Red-DiscordBot.git /root/Red-DiscordBot


# Adding startscript and executes it
ADD start.sh /start.sh
RUN chmod 0755 /start.sh
CMD ["bash", "start.sh"]
