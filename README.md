# docker-nprobe
A nprobe container based on lucaderi/ntopng-docker and Ubuntu 14:04 images

## Notes
* by default the nprobe collector port is udp/6343.

## Usage

```bash
$ docker run -ti --rm --net=host -e COLLECTOR_PORT=6543 xdrum/nprobe
```

```bash
$ docker run -ti --rm --net=host xdrum/nprobe nprobe --collector-port 6543 -i none --zmq tcp://127.0.0.1:5556
```
