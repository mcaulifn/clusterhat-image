FROM ubuntu

ENV VERSION=None
WORKDIR /build
COPY build/ build/
COPY files/ files/
RUN pwd
RUN ls -la
#VOLUME [ "." ]

ENTRYPOINT [ "/build/build/create.sh", "${VERSION}" ]