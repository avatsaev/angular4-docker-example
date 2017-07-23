# Docker example for Angular4 running on Nginx

## 1. Building the image and running the container

```sh
docker-compose up -d --build
```

## 2. Identification of the IP address of the container

```sh
docker inspect angular4dockerexample_nginx_1 | grep IPA
          #  "SecondaryIPAddresses": null,
          #  "IPAddress": "",
          #          "IPAMConfig": null,
          #          "IPAddress": "172.18.0.2",

```

Open your browser on [172.18.0.2](http://172.18.0.2/)


## 3. Actual issue
The landing page is stoping at `Loading...`.

No error message is found in the console.
