# go-math-app

A simple application to demonstrate code analysis with SonarQube.

## How to Use

1. Start the SonarQube with Docker.

```sh
docker run -d --name sonarqube -e SONAR_ES_BOOTSTRAP_CHECKS_DISABLE=true -m 2g -p 9000:9000 sonarqube:9.9.1-community
```

2. Run the test.

- Make sure to replace `YOUR_TOKEN` with the generated token from the SonarQube.
- Make sure to replace `/path/to/app` with the location of your project.

```sh
docker run \
--rm \
-e SONAR_HOST_URL="http://localhost:9000" \
-e SONAR_LOGIN="YOUR_TOKEN" \
-v "/path/to/app:/usr/src" \
--network host \
-m 1g \
sonarsource/sonar-scanner-cli
```
