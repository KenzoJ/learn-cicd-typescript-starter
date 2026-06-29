FROM node:22

WORKDIR /usr/src/app

ADD . .

RUN npm ci --force

RUN npm run build

CMD ["node", "dist/main.js"]
