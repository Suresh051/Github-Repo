#Base image
FROM ubuntu
#Do image configuration
RUN apt-get -y update
RUN apt-get -y install git
RUN /bin/bash -c 'echo This would generally be apt-get or other system conf'
ENV myCustomEnvVar="This is a sample." \
otherEnvVar="This is also a sample."
