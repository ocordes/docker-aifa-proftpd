FROM ubuntu:18.04

RUN apt-get update \
    && apt-get install -y --no-install-recommends proftpd less \
    && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh ./entrypoint.sh
RUN chmod a+x ./entrypoint.sh

#RUN ln -sf /dev/stdout /var/log/proftpd/xferlog
#RUN touch  /var/log/proftpd/xferlog

# FTP ROOT
RUN mkdir /ftp

EXPOSE 21 49152-49407

ENTRYPOINT ["./entrypoint.sh"]
#CMD ["/usr/sbin/proftpd","--nodaemon" ]
