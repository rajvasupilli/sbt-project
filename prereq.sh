#!/bin/bash
# This script installs all the prequisites needed.
# yum install -y git

yum install -y java-1.8.0-openjdk

yum install -y java-devel

curl https://bintray.com/sbt/rpm/rpm | sudo tee /etc/yum.repos.d/bintray-sbt-rpm.repo

yum install -y sbt

cd sbt-project/

sbt test

sbt dist

sbt stage


