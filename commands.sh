# start SonarQube in Docker
docker run -d --name sonarqube -e SONAR_ES_BOOTSTRAP_CHECKS_DISABLE=true -m 2g -p 9000:9000 sonarqube:9.9.1-community

# start code analysis with SonarQube
docker run \
--rm \
-e SONAR_HOST_URL="http://localhost:9000" \
-e SONAR_LOGIN="YOUR_TOKEN" \
-v "/path/to/app:/usr/src" \
--network host \
-m 1g \
sonarsource/sonar-scanner-cli
