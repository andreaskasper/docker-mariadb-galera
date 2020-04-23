FROM mariadb:latest

RUN DEBIAN_FRONTEND=noninteractive apt-get -o Dpkg::Options::='--force-confnew' -qqy install galera rsync && \
    rm -rf /var/lib/apt/lists/*

COPY src/start.sh /start.sh

CMD ["/start.sh"]
