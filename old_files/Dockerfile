FROM ubuntu
RUN apt-get update
RUN apt-get install -y git ack-grep vim curl wget tmux build-essential python-software-properties unzip

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y install nginx

RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN mkdir /etc/nginx/ssl
ADD default /etc/nginx/sites-available/default

RUN git clone https://github.com/Valve/fingerprintjs2.git
RUN mkdir /var/www/
RUN cp -r ./fingerprintjs2/* /var/www/

RUN wget https://dl.dropboxusercontent.com/u/2093312/clientjs.zip
RUN unzip clientjs.zip
RUN cp -r clientjs /var/www/

EXPOSE 80

CMD ["nginx"]