FROM node:18.16.0-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY .env /usr/src/app/

COPY package.json /usr/src/app/
RUN npm install

COPY . /usr/src/app
RUN npm build

EXPOSE 3000
ENV TZ=Asia/Shanghai
CMD ["npm", "start"]