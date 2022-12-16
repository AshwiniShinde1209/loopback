FROM redhat/ubi8
<<<<<<< HEAD

MAINTAINER "Ashwini Shinde <Ashwini.Shinde4@ibm.com>" 


RUN yum -y update 
RUN dnf -y module install nodejs

=======
MAINTAINER "ashwini shinde" 

RUN yum -y update 

RUN dnf -y module install nodejs
>>>>>>> 7fe50039d8cf9eb3be7d26a0dc2262f02be60f7f
RUN yum -y install git
RUN git clone -b v2.38.1 -- https://github.com/strongloop/loopback.git && \
	cd loopback

WORKDIR /loopback
COPY ./ /loopback
<<<<<<< HEAD

RUN npm cache clear --force
RUN npm install phantomjs-prebuilt@2.1.14 --ignore-scripts
RUN npm install --loglevel=error
=======
RUN npm cache clear --force
#RUN npm audit fix --force
RUN npm install phantomjs-prebuilt@2.1.14 --ignore-scripts
RUN npm install --loglevel=error
#RUN npm test
>>>>>>> 7fe50039d8cf9eb3be7d26a0dc2262f02be60f7f

