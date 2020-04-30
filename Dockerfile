FROM openjdk:8

ENV JAVA_OPTS="-XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap"

CMD bash /run.sh
COPY run.sh /run.sh
RUN chmod +x /run.sh

COPY build/libs/deps /dependencies
COPY build/classes/java/main /classes
#COPY build/resources/main/* /classes/