# Filebeat 1.1.1
# Credits to Sébastien Pujadas https://github.com/spujadas/elk-docker/tree/master/nginx-filebeat

FROM nginx
MAINTAINER Joakim Fristedt

###############################################################################
#                                INSTALLATION
###############################################################################

### install Filebeat

RUN apt-get update -qq \
 && apt-get install -qqy curl \
 && apt-get install -qqy vim \
 && apt-get clean

RUN curl -L -O https://download.elastic.co/beats/filebeat/filebeat_1.1.1_amd64.deb \
 && dpkg -i filebeat_1.1.1_amd64.deb \
 && rm filebeat_1.1.1_amd64.deb


###############################################################################
#                                CONFIGURATION
###############################################################################

### configure Filebeat

# config file
ADD filebeat.yml /etc/filebeat/filebeat.yml

# CA cert
RUN mkdir -p /etc/pki/tls/certs
ADD logstash-beats.crt /etc/pki/tls/certs/logstash-beats.crt

###############################################################################
#                                    START
###############################################################################

ADD ./start.sh /usr/local/bin/start.sh
RUN chmod +x /usr/local/bin/start.sh
CMD [ "/usr/local/bin/start.sh" ]
