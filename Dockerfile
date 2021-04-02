FROM cloudmonitor/apache-php

RUN apt-get update && apt-get upgrade -yq \
  && curl -fsSL https://deb.nodesource.com/setup_15.x | -E bash - \
  && apt-get install -y nodejs
