FROM grafana/k6:latest

COPY ./loadScenario /test/loadScenario
COPY ./testCase /test/testCase
COPY ./testRequirements /test/testRequirements
COPY ./testScenario /test/testScenario