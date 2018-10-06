
FROM docker.elastic.co/elasticsearch/elasticsearch:6.4.1

RUN cd /usr/share/elasticsearch && ./bin/elasticsearch-plugin install https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v6.4.1/elasticsearch-analysis-ik-6.4.1.zip
