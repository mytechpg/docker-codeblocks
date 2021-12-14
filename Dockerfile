# https://github.com/Fullaxx/ubuntu-desktop/tree/master/app
# https://github.com/ConSol/docker-headless-vnc-container
# https://github.com/panta/docker-ubuntu-vnc


# example with vnc paramter
#https://github.com/Fullaxx/ubuntu-desktop/blob/master/app/tiger.sh

FROM fullaxx/ubuntu-desktop:xfce4 
MAINTAINER Andrea <aghittino@gmail.com>

RUN echo "dash dash/sh boolean false" | debconf-set-selections && \
    dpkg-reconfigure -p critical dash


RUN apt-get update && \
    apt-get install -y --no-install-recommends \
		vim \
		git \
		codeblocks \
		xterm \
		build-essential \
		iproute2 \
		autoconf \
		cmake \
		openssh-server \
		cmake-gui cmake-curses-gui \
		libssl-dev \
		doxygen graphviz \
		&& \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* /var/tmp/* /tmp/*

# WORKDIR /

#EXPOSE 5901

COPY app2.sh /app2.sh
COPY cb2 /usr/bin/cb2

CMD ["/app2.sh"]
