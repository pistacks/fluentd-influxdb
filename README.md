# fluentd-influxdb
Ship Docker Logs to InfluxDB with FluentD

## Usage

```
$ docker run \
  --log-driver=fluentd \
  --log-opt tag="docker.mystack.api" \
  --log-opt fluentd-address=localhost:24224 \
  python:alpine echo GET / Mozilla hello
GET / Mozilla hello again
```

## Resources

- https://docs.docker.com/config/containers/logging/fluentd/
- https://docs.fluentd.org/v/0.12/articles/docker-logging-efk-compose
- https://github.com/kzk/docker-compose-efk
