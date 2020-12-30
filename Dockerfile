FROM node:14-alpine
WORKDIR /usr/src/app

ADD rollup.config.js package*.json ./

# install deps
RUN yarn install

ADD ./src ./src
ADD ./public ./public

# create a production build
RUN yarn build

EXPOSE 5000
ENV HOST=0.0.0.0

ENTRYPOINT ["yarn", "start"]