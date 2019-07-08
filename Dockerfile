FROM node:10.16.0-alpine
RUN apk add --no-cache curl
RUN curl -s https://raw.githubusercontent.com/jhuckaby/Cronicle/master/bin/install.js | node
ENV CRONICLE_foreground 1
ENV CRONICLE_echo 1
CMD /opt/cronicle/bin/control.sh setup && /opt/cronicle/bin/control.sh start
