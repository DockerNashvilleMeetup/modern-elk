FROM docker.elastic.co/logstash/logstash:6.2.2

RUN cd /usr/share/logstash && \
    bin/logstash-plugin install logstash-filter-aggregate && \
    bin/logstash-plugin install logstash-filter-json && \
    bin/logstash-plugin install logstash-filter-kv && \
    bin/logstash-plugin install logstash-filter-useragent

COPY logstash.yml /usr/share/logstash/config/logstash.yml
COPY patterns /usr/share/logstash/patterns

RUN rm -f /usr/share/logstash/pipeline/logstash.conf
ADD pipeline/ /usr/share/logstash/pipeline/

HEALTHCHECK --interval=30s --timeout=5s --start-period=300s \
    CMD curl -f localhost:9600/_node/stats/process || exit 1

# config test
RUN logstash -t