FROM java:8

ENV KIBANA_VERSION 4.0.2-linux-x64

# Download version of kibana
RUN cd /tmp && \
    wget https://download.elasticsearch.org/kibana/kibana/kibana-${KIBANA_VERSION}.tar.gz && \
    tar -xzf ./kibana-${KIBANA_VERSION}.tar.gz && \
    mv ./kibana-${KIBANA_VERSION} /opt/kibana && \
    rm ./kibana-${KIBANA_VERSION}.tar.gz

# Logstash ports
EXPOSE 5601

ADD kibana.yml /opt/kibana/config/kibana.yml

# Start logstash
CMD /opt/kibana/bin/kibana