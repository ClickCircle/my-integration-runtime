FROM openjdk:8-slim
 
ENV TINI_VERSION v0.18.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini
ENTRYPOINT ["/tini", "--"]
CMD ["/run.sh"]
 
COPY run.sh /run.sh
RUN chmod +x /run.sh
 
COPY build/libs/deps /lib
COPY build/classes/java/main /classes
