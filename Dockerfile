FROM cloudmonitor/apache-php

ENV BRANCH master

ADD init.sh /init.sh

RUN apt-get update && apt-get upgrade -yq \
    && curl -fsSL https://deb.nodesource.com/setup_15.x | -E bash - \
    && apt-get install -y nodejs \
    && npm install -g npm@latest \
    
    && awk 'FNR==3{system("cat /init.sh")} 1' /usr/local/bin/entrypoint
