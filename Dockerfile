FROM ppc64le/node
MAINTAINER "ashwini shinde" 

RUN apt-get -y update && \
	apt-get install -y build-essential apt-utils
	
RUN npm cache clear --force
#RUN npm install -g npm@9.1.3
RUN git init && \
#	git clone https://github.com/strongloop/loopback.git && \
	git clone -b v2.38.1 -- https://github.com/strongloop/loopback.git && \
	cd loopback

WORKDIR /loopback
COPY ./ /loopback
#RUN npm audit fix
RUN npm install -g npm@9.2.0 grunt-cli --loglevel=error
#RUN npm test

