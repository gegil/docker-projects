#/bin/sh
docker build -t jenkins01 .
#docker run -p 8080:8080 -p 50000:50000 -v /home/gil/docker/jenkins/src:/var/jenkins_home  jenkins01
docker run -p 8080:8080 -p 50000:50000 --env JAVA_OPTS=-Djenkins.install.runSetupWizard=false jenkins01
