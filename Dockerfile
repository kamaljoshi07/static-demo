FROM centos AS builder

RUN yum install -y git
RUN mkdir /home/demoTest

RUN cd /home/demoTest
RUN git clone https://github.com/kamaljoshi07/static-demo.git

WORKDIR /home/demoTest

COPY . .

FROM nginx

COPY /home/demoTest/index.html /usr/share/nginx/html/
