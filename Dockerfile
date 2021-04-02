FROM cloudmonitor/apache-php

ENV BRANCH master

RUN apt-get update && apt-get upgrade -yq \
    && curl -fsSL https://deb.nodesource.com/setup_15.x | -E bash - \
    && apt-get install -y nodejs \
    && npm install -g npm@latest
