FROM node:lts

WORKDIR /app

EXPOSE 3000
COPY ./website /app
RUN npm install
RUN npm run build 

CMD [ "npm", "run", "serve" ]

