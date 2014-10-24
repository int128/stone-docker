# Stone on Docker

A Docker image of [Stone](http://www.gcd.org/sengoku/stone/), that is a TCP/IP repeater in the application layer.


## How to use

Run the image on Docker Hub.

```sh
docker run int128/stone
```

Following example forwards an incoming connection with SSL decryption.

```sh
docker run -d -p 443:443 int128/stone localhost:22 443/ssl
```

