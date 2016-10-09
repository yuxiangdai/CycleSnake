FROM mhart/alpine-node

ENV NODE_ENV production
ENV PATH /usr/local/bin:$PATH

RUN ln -s /usr/local/bin/node /usr/local/bin/nodejs

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install
COPY . /usr/src/app

VOLUME /usr/src/app

EXPOSE 80

CMD npm start
