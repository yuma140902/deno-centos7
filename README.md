# deno-centos7

Docker Image to build Deno which can run on CentOS7

## Build Docker Image

```sh
docker build -t deno-centos7 .
```

## Build Deno

```
docker run --name tmp -it deno-centos7 /root/.cargo/bin/cargo install deno --locked
docker start tmp
docker cp tmp:/root/.cargo/bin/deno .
docker stop tmp
```
