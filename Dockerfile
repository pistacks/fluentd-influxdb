FROM arm32v6/fluentd:latest
ADD fluent.conf /etc/fluent/fluent.conf
RUN gem install fluent-plugin-influxdb
ENTRYPOINT ["fluentd", "-c", "/etc/fluent/fluent.conf"]
