FROM lucaderi/ntopng-docker:latest

MAINTAINER Alessio Cassibba (x-drum) <swapon@gmail.com>

RUN apt-get update && apt-get install -y nprobe

ADD run.sh /

ENTRYPOINT ["/bin/bash","/run.sh"]
