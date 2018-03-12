FROM docker.elastic.co/elasticsearch/elasticsearch:6.2.2

COPY --chown=elasticsearch:elasticsearch elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml

RUN echo "networkaddress.cache.ttl=30" >> ${JAVA_HOME}/lib/security/java.security && \
    echo "networkaddress.cache.negative.ttl=0" >> ${JAVA_HOME}/lib/security/java.security
