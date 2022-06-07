FROM node:lts

WORKDIR /app

COPY ./website /app
RUN npm install
RUN npm run build 

CMD npm run serve --port $PORT