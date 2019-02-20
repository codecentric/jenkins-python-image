FROM jenkins/jenkins:latest
ADD requirements.txt requirements.txt
USER root
RUN apt-get update

# Install python 3
RUN apt-get install -y python3 python3-pip

# Install app dependencies
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt