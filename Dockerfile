
FROM docker.elastic.co/elasticsearch/elasticsearch:6.5.4

MAINTAINER https://github.com/zhangliqiang/elasticsearch-docker-with-analysis-ik

# install IK Analysis
RUN mkdir -p /usr/share/elasticsearch/plugins/ik \
    && cd /usr/share/elasticsearch/plugins/ik \
    && wget https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v6.5.4/elasticsearch-analysis-ik-6.5.4.zip \
    && unzip *.zip \
    && rm -f *.zip

HEALTHCHECK --interval=10s --timeout=5s --retries=30 --start-period=30s CMD curl -f 127.0.0.1:9200
