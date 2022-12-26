# deno-centos7

Docker Image to build Deno to run on CentOS7

## Build Docker Image

```sh
docker build -t deno-centos7 .
```

## Build Deno

```
docker run --name tmp -it deno-centos7 /root/.cargo/bin/cargo install deno --locked
```

Deno binary will be in `/root/.cargo/bin/`.
