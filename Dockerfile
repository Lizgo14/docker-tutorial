FROM node

RUN mkdir /usr/src/app
WORKDIR /usr/src/app

ENV PATH /usr/src/app/node_module/.bin:$PATH

COPY package*.json ./

RUN npm install

COPY . /user/src/app

EXPOSE 4000
CMD [ "npm", "start"]
