FROM node:14.17.5

WORKDIR /app

COPY package.json .

RUN yarn install

COPY . .

ENV PORT 8000

EXPOSE $PORT

VOLUME [ "/app/data" ]

CMD [ "node", "app.js" ]
