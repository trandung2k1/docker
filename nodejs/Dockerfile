FROM node:alpine

WORKDIR /app

RUN chown node:node /app

USER node

COPY --chown=node:node . .

RUN yarn && yarn add typescript && yarn build

CMD [ "node", "./dist/index.js" ]