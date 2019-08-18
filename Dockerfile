FROM arm32v6/fluentd:latest
USER root
RUN fluent-gem install fluent-plugin-influxdb
USER fluent
ADD fluent.conf /etc/fluent/
ENTRYPOINT ["/usr/bin/fluentd", "-c", "/etc/fluent/fluent.conf"]
