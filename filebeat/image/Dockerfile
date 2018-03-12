FROM docker.elastic.co/beats/filebeat:6.2.1

USER root
COPY filebeat.yml /usr/share/filebeat/filebeat.yml
RUN chmod a-w /usr/share/filebeat/filebeat.yml