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
