FROM emarcs/debian-minit

MAINTAINER Marco Pompili "docker@mg.odd.red"

RUN apt-get -qq update && \
apt-get -qy install python-certbot-apache postfix dovecot-imapd mailman spamassassin mutt telnet && \
apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY startup /etc/minit/
