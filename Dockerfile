FROM registry.aliyuncs.com/wangcong/nodejs5.8.0

RUN npm -g install socketlog-server

### main
ADD ./start.sh /start.sh
RUN chmod 755 /start.sh

CMD ["/bin/bash", "/start.sh"]

EXPOSE 1229
EXPOSE 1116


#FROM node:4-onbuild
# replace this with your application's default port
#EXPOSE 8888


#docker build -t my-nodejs-app .
#docker run -it --rm --name my-running-app my-nodejs-app


#docker run -it --rm --name my-running-script -v "$PWD":/usr/src/app -w /usr/src/app node:4 node your-daemon-or-script.js