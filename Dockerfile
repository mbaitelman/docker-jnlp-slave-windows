FROM openjdk:latest

ADD https://repo.jenkins-ci.org/public/org/jenkins-ci/main/remoting/4.2.1/remoting-4.2.1.jar slave.jar
COPY "slave-launch.ps1" ".\slave-launch.ps1"

ENTRYPOINT .\slave-launch.ps1
