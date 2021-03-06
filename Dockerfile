FROM mhart/alpine-node:4.6

MAINTAINER Ben Simpson, ben@newcrossfoodcoop.org.uk

# This definition is primarily used for local docker and docker-compose builds

RUN apk update
RUN apk add git
RUN npm install -g gulp abao

WORKDIR /home/app

ADD package.json /home/app/package.json
ADD node_modules /home/app/node_modules

RUN npm rebuild
RUN npm install

ADD . /home/app/

CMD ["gulp"]
