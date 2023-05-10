FROM node:lts

RUN npm i gritty -g
RUN curl -fsSL https://raw.githubusercontent.com/filebrowser/get/master/get.sh | bash
RUN curl -fsSL https://code-server.dev/install.sh | bash 

WORKDIR /app

COPY start.sh /app/start.sh
COPY filebrowser.db /app/filebrowser.db

CMD chmod +x /app/start.sh

ENTRYPOINT ["/bin/sh", "/app/start.sh"]
