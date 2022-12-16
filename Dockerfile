FROM redhat/ubi8

MAINTAINER "Ashwini Shinde <Ashwini.Shinde4@ibm.com>" 


RUN yum -y update 
RUN dnf -y module install nodejs

RUN yum -y install git
RUN git clone -b v2.38.1 -- https://github.com/strongloop/loopback.git && \
	cd loopback

WORKDIR /loopback
COPY ./ /loopback

RUN npm cache clear --force
RUN npm install phantomjs-prebuilt@2.1.14 --ignore-scripts
RUN npm install --loglevel=error

