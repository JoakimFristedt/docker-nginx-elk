##Elasticsearch with Nginx load balancer

Project consists of Nginx, Elasticsearch, Logstash, Kibana and Filebeat. Filebeat is used to forward Nginx access/error logs to ELK.

###Requirements
* Docker


###Getting started

Start services

```docker-compose up```

Start three Elasticsearch nodes

```docker-compose scale elasticsearch=3```



