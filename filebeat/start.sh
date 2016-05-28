#!/bin/bash

curl -XPUT 'http://localhost:9200/_template/filebeat?pretty' -d@/etc/filebeat/filebeat.template.json
/etc/init.d/filebeat start
tail -n 1 -f /var/log/nginx/access-lb.log -f /var/log/nginx/error-lb.log