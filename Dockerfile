FROM ubuntu:focal

RUN /usr/bin/apt-get update && \
    /usr/bin/apt-get install -y curl && \
    curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    /usr/bin/apt-get update && \
    /usr/bin/apt-get upgrade -y && \ 
    /usr/bin/apt-get install -y nodejs ffmpeg

WORKDIR /home/app

ENTRYPOINT [ "bash" ]