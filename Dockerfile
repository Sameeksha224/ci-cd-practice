FROM bash:4.4

WORKDIR /logger

RUN apk add --no-cache busybox-extras

COPY time_stamp.sh /time_stamp.sh
RUN chmod +x /time_stamp.sh

# Serve metrics on port 9100
CMD sh -c "/time_stamp.sh & httpd -f -p 9100 -h /tmp"
