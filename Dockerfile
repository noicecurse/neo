FROM amazoncorretto:18-alpine3.15
ENTRYPOINT ["/usr/bin/neo.sh"]

LABEL org.opencontainers.image.source=https://github.com/guneetsahai-neo/neo

COPY neo.sh /usr/bin/neo.sh
RUN chmod +x /usr/bin/neo.sh
COPY target/neo.jar /usr/share/neo/neo.jar