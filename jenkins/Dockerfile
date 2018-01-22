FROM jenkins:2.60.3
EXPOSE 80
USER root

################  Plugins ###############
# Install Jenkins plugins
RUN /usr/local/bin/install-plugins.sh \
    scm-sync-configuration:0.0.10 \
    workflow-aggregator:2.5 \
    docker-workflow:1.8 \
#    workflow-aggregator:2.5 \
    pipeline-maven:3.2.0 \
    git:3.7.0
#########################################

RUN mkdir -p /var/jenkins_home/jobs/
#COPY ./src/jobs/ /var/jenkins_home/jobs/
COPY ./src/jobs /var/jenkins_home/jobs
#COPY jenkins.war /usr/share/jenkins/jenkins.war
COPY executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy
COPY ./src/jenkins.war /usr/share/jenkins/jenkins.war
COPY ./src/jenkins.sh /usr/local/bin/jenkins.sh
RUN chmod +x /usr/local/bin/jenkins.sh
#RUN mkdir -p /var/jenkins_home && chmod -R 777 /var/jenkins_home/ && touch /var/jenkins_home/copy_reference_file.log && chmod 777 /var/jenkins_home/copy_reference_file.log

RUN chown -R 1000:1000 /var/jenkins_home/
RUN chown -R 1000:1000 /usr/local/bin/
