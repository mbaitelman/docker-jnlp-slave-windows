ARG agent_tag=jdk11
FROM jenkins/agent:4.3-6-${agent_tag}-windowsservercore-1809
 

ADD https://repo.jenkins-ci.org/public/org/jenkins-ci/main/remoting/4.2.1/remoting-4.2.1.jar slave.jar
COPY slave-launch.ps1 C:/ProgramData/Jenkins

ENTRYPOINT ["powershell.exe", "-f", "C:/ProgramData/Jenkins/slave-launch.ps1"]
