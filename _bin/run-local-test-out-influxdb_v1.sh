#!/bin/sh

export K6_INFLUXDB_USERNAME=my-user
export K6_INFLUXDB_PASSWORD=my-password
export K6_INFLUXDB_INSECURE=false
export K6_INFLUXDB_PUSH_INTERVAL='1s'
export K6_INFLUXDB_CONCURRENT_WRITES='4'

export SERVER_HOST=localhost:8080

k6 run -o influxdb=http://localhost:8086/test ../testScenario/scenario_1.js