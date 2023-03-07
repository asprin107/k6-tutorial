# k6-tutorial
This Project is a tutorial for k6.

## Real-time metrics (Outputs)

You can monitor test clients using influxdb and grafana integration.

How to init
```shell
cd ./outputs/influxdb-grafana
docker-compose up -d
```

Configure the grafana dashboard using k6 template. See [k6 template for grafana](https://grafana.com/grafana/dashboards/2587-k6-load-testing-results/)

## Sample Test Target

Run sample target `spring-petclinic` service. [Spring petclinic](https://github.com/spring-projects) is sample project maintained by spring.
This project contains target service in _sampleTestTarget/spring-petclinic_ as a git submodule.
You can run mysql and postgre for this service using **docker-compose** easily.

After that, you can build java application using maven or gradle. Once you build the java application,
you can either run it directly on the host or run it with Docker.