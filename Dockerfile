# Version 0.0.1
FROM jwilder/nginx-proxy

MAINTAINER Yurii Khmelevskii <y@uwinart.com>

RUN sed -i -e "/sendfile/a client_max_body_size 2000m;\nproxy_connect_timeout 900;\nproxy_send_timeout 900;\nproxy_read_timeout 900;\nsend_timeout 900;" /etc/nginx/nginx.conf
