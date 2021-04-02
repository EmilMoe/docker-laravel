FROM cloudmonitor/apache-php

RUN curl -fsSL https://deb.nodesource.com/setup_15.x | -E bash - \
  && apt-get install -y nodejs
