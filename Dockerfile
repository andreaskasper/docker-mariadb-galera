FROM mariadb:latest

LABEL maintainer="Andreas Kasper <andreas.kasper@goo1.de>"

COPY src/start.sh /start.sh

RUN DEBIAN_FRONTEND=noninteractive apt-get -o Dpkg::Options::='--force-confnew' -qqy install galera rsync && \
    chmod 0755 /start.sh && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 3306 4444 4567 4568

CMD ["/start.sh"]
