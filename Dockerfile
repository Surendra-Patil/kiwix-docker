FROM alpine:3.3

ADD crontab.txt /crontab.txt
ADD kiwix-serve /kiwix-serve
ADD wikipedia.zim /home/wikipedia.zim
COPY entry.sh /entry.sh
RUN chmod 755 /entry.sh
RUN /usr/bin/crontab /crontab.txt

CMD ["/entry.sh"]

