FROM ubuntu:14.04
MAINTAINER Phyks <phyks@phyks.me>

# Install packages
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y postgresql postgresql-server-dev-all redis-server python3 python3-pip build-essential python3-dev git
RUN pip3 install requests sqlalchemy pycrypto numpy cherrypy psycopg2 redis

# Configure the system
ADD init.sh /tmp/init.sh
RUN chmod 775 /tmp/init.sh
RUN rm /tmp/init.sh

# Get CitizenWatt
RUN git clone https://github.com/CitoyensCapteurs/CitizenWatt-Base /opt/citizenwatt
# Init CitizenWatt config
cd /opt/citizenwatt
python3 ./visu.py

ADD start.sh /start.sh

ENTRYPOINT ["/bin/bash", "-e", "/start.sh"]

EXPOSE 8080
