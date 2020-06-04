FROM node:10.20.1-alpine
ARG TAG="demo"

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .
COPY fs_config.template.json fs_config.json

RUN mkdir /app/build
COPY --from=polisdemo/client-report:"$TAG" /app/build/ /app/build/
COPY --from=polisdemo/client-admin:"$TAG" /app/build/ /app/build/
COPY --from=polisdemo/client-participation:"$TAG" /app/build/ /app/build/

EXPOSE 8080

CMD node --max_old_space_size=400 --gc_interval=100 --harmony app.js
