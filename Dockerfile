FROM lucaderi/ntopng-docker:latest

MAINTAINER Alessio Cassibba (x-drum) <swapon@gmail.com>

RUN apt-get update && apt-get install -y nprobe

ENTRYPOINT ["/usr/local/bin/nprobe"]
CMD ["--collector-port 2055"]
