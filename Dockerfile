
FROM docker.elastic.co/elasticsearch/elasticsearch:6.4.1

MAINTAINER https://github.com/zhangliqiang/elasticsearch-docker-with-analysis-ik

RUN mkdir -p /usr/share/elasticsearch/plugins/ik \
    && cd /usr/share/elasticsearch/plugins/ik \
    && wget https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v6.4.1/elasticsearch-analysis-ik-6.4.1.zip \
    && unzip *.zip \
    && rm -f *.zip
