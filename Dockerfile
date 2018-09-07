FROM alpine:edge

RUN apk add --no-cache proftpd

COPY entrypoint.sh ./entrypoint.sh
RUN chmod a+x ./entrypoint.sh

# FTP ROOT
RUN mkdir /ftp

EXPOSE 21 49152-49407

ENTRYPOINT ["./entrypoint.sh"]

