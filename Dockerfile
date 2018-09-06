FROM ubuntu

RUN apt-get update -y
RUN apt-get install -y proftpd sudo less

COPY entrypoint.sh ./entrypoint.sh
RUN chmod a+x ./entrypoint.sh

#RUN mkdir /var/log/proftpd

#ADD proftpd.conf /etc/proftpd/proftpd.conf
#RUN sudo chown root:root /etc/proftpd/proftpd.conf

# FTP ROOT
RUN mkdir /ftp

EXPOSE 21 49152-49407

ENTRYPOINT ["./entrypoint.sh"]

