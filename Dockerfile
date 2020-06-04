ARG openjdk_tag=latest
FROM openjdk:${openjdk_tag}

ADD https://repo.jenkins-ci.org/public/org/jenkins-ci/main/remoting/4.2.1/remoting-4.2.1.jar slave.jar
COPY "slave-launch.ps1" ".\slave-launch.ps1"

ENTRYPOINT ["powershell.exe", "-f", "C:\slave-launch.ps1"]
