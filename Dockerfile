FROM debian

LABEL description="Docker image for Debian with Xfce4 desktop environment." \
	author="l3e0x7b, <lyq0x7b@foxmail.com>"

SHELL ["/bin/bash", "-c"]

WORKDIR /

COPY entrypoint.sh .

ENV DE="xfce4" BROWSER="firefox-esr firefox-esr-l10n-all"

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
	DEBIAN_FRONTEND=noninteractive apt-get -y install $DE $BROWSER xrdp && \
	DEBIAN_FRONTEND=noninteractive apt-get clean && \
	rm -rf /var/lib/apt/lists/* /var/log/apt/* /var/log/dpkg.log && \
	chmod +x ./entrypoint.sh

COPY ./xrdp-config/* /etc/xrdp/

EXPOSE 3389

ENTRYPOINT ./entrypoint.sh
