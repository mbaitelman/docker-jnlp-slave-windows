FROM openjdk:latest

ADD https://repo.jenkins-ci.org/public/org/jenkins-ci/main/remoting/3.9/remoting-3.9.jar slave.jar
COPY "slave-launch.ps1" ".\slave-launch.ps1"

ENTRYPOINT .\slave-launch.ps1
