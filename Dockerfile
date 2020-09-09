FROM node:12.2.0-alpine

RUN apk update

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

COPY package.json ./

RUN yarn

RUN npm i react-scripts@3.3.0 -g

COPY . ./