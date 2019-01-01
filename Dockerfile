FROM node:10.12-alpine

WORKDIR /app

COPY --chown=node:node . ./

RUN npm install && npm run build

USER node

ENTRYPOINT ["npm", "run", "start:prod"]
