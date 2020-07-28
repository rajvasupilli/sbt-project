FROM ubuntu

MAINTAINER Pavan

RUN apt-get update && apt-get install -y gnupg2 && apt-get install -y wget && apt-get install -y curl && apt-get -y install openjdk-8-jdk

RUN echo "deb https://dl.bintray.com/sbt/debian /" |  tee -a /etc/apt/sources.list.d/sbt.list

RUN curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | apt-key add

RUN  apt-get update

RUN  apt-get install -y sbt

#ADD . /

RUN pwd 

RUN ls -lthr /

RUN sbt test

RUN nohup sbt run &

#RUN curl localhost:9000/live

#RUN sbt dist

#RUN sbt assembly

RUN chmod +x /target/universal/scripts/bin/gha-fargate-poc

RUN /target/universal/scripts/bin/gha-fargate-poc -Dplay.http.secret.key='QCY?tAnfk?aZ?iwrNwnxIlR6CTf:G3gf:90Latabg@5241AB`R5W:1uDFN];Ik@n'

