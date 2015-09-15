# Uses official Ubuntu 14.04 image
FROM ubuntu:14.04

MAINTAINER ram<ram.ramavath@live.com>

# Environment variables 
ENV NIFI_VERSION 0.2.1
ENV NIFI_HOME /usr/local/lib/nifi-${NIFI_VERSION}

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64

# Install Java 7
RUN apt-get update && apt-get install -y --no-recommends openjdk-7-jre

# Install wget and tar
RUN apt-get install -y wget tar

# Download and install Nifi from a mirror



# Add Nifi to PATH
ENV PATH $PATH:$NIFI_HOME/bin

# Expose Nifi default port 8080
EXPOSE 8080
