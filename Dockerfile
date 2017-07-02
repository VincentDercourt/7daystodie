FROM debian:latest

LABEL maintainer="pixel@rageclic.fr" \
	  version=1.0 \
	  description="Create a server 7 Days To Die"

RUN apt-get update \
    && dpkg --add-architecture i386 \
    && apt-get update \
    && apt-get install -y mailutils postfix curl wget file bzip2 gzip unzip binutils bsdmainutils python util-linux ca-certificates tmux lib32gcc1 libstdc++6 libstdc++6:i386 telnet expect sudo cron

COPY ./*.* /

RUN chmod 755 /start.sh \
    && sed -i -e 's/\r$//' /start.sh \
    && useradd -ms /bin/bash sdtdserver \
    && echo "sdtdserver:sdtdserver" | chpasswd && adduser sdtdserver sudo \
    && echo "* * * * * sdtdserver /home/sdtdserver/sdtdserver monitor > /dev/null 2>&1" >> /etc/cron.d/sdtdserver-restart \
    && chmod 0644 /etc/cron.d/sdtdserver-restart \
    && cron

VOLUME /home/sdtdserver

USER sdtdserver

WORKDIR /home/sdtdserver

EXPOSE 26900 8080-8082 26900/udp 26900-26902/udp

CMD ["/start.sh"]