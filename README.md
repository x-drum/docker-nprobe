# docker-nprobe
A nprobe container based on lucaderi/ntopng-docker and Ubuntu 14:04 images

## Notes
* By default the nprobe collector port is **udp/2055**.
* In demo mode nprobe is limited to 25k flows, **you will need a license for production purposes** ( see: http://www.nmon.net/shop/cart.php ), you can expose the license to your container using volumes ( -v /path/to/nprobe.license:/etc/nprobe.license ).

## Usage

Launch the probe using the defaults [--collector-port 2055]:
```bash
$ docker run -ti --rm xdrum/nprobe
```

Launch the probe passing custom arguments and using host network stack:
```bash
$ docker run -ti --rm --net=host xdrum/nprobe nprobe \
  --collector-port 2056 \
  --zmq tcp://*:5555 \
  -i none
```

Launch the probe passing custom arguments and mapping some port mappings:
```bash
$ docker run -ti --rm -p 192.168.1.1:2056:2056 -p 127.0.0.1:5555:5555 xdrum/nprobe nprobe \
  --collector-port 2056 \
  --zmq tcp://*:5555 \
  -i none
```
