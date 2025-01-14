FROM node:lts-alpine3.12

WORKDIR /usr/src/app

COPY . .
RUN yarn && yarn build

EXPOSE 5000

CMD [ "yarn", "run", "start:prod" ]

