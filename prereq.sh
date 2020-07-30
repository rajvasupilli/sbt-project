#!/usr/bin/env bash
# This script installs all the prequisites needed.

apt-get update

apt-get install -y gnupg2 

apt-get install -y wget

apt-get install -y curl 

apt-get -y install openjdk-8-jdk

RUN echo "deb https://dl.bintray.com/sbt/debian /" |  tee -a /etc/apt/sources.list.d/sbt.list

RUN curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | apt-key add

RUN  apt-get update

RUN  apt-get install -y sbt

cd sbt-project/

sbt test

sbt dist

sbt stage


