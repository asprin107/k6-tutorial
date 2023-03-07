# k6-tutorial
This Project is a tutorial for k6.

## How to test?

This project contains two types of testing method.

* local
* kubernetes

### Local
In this case, you need to set up InfluxDB and Grafana locally before running the test. 
After setting them up, you can initiate the test.
```shell
cd ./_bin/
./run-local-test-out-influxdb_v1.sh
```

### Kubernetes
In this case, InfluxDB and Grafana must be set up on an external host before testing. 
The k6 job running on the Kubernetes cluster can then connect to the InfluxDB instance to store the test results.
```shell
cd ./_bin/
./run-k8s-test.sh
```

or
```shell
kubectl apply -f ./_helm/kube_apply.yaml
```
those two script gives same result.


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