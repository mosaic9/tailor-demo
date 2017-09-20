FROM registry-write.opensource.zalan.do/pathfinder/alpine-node:8.3.0
MAINTAINER Team Pathfinder <team-pathfinder@zalando.de>

ADD . /opt/tailor
WORKDIR /opt/tailor

EXPOSE 8001
CMD node .
