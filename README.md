##Elasticsearch with Nginx load balancer

Project consists of Nginx, Elasticsearch, Logstash, Kibana and Filebeat. Filebeat is used to forward Nginx access/error logs to ELK.

Inspired by Sébastien Pujadas, https://github.com/spujadas/elk-docker

###Requirements
* Docker


###Getting started

Start services

```docker-compose up```

Start three Elasticsearch nodes

```docker-compose scale elasticsearch=3```



