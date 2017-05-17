
# Dockerized Angular 4 App (with Angular CLI)

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

## Build docker image

```
$ docker build -t myapp . 
```

## Run the container

```
$ docker run -d -p 8080:80 myapp
```


The app will be available at http://localhost:8080

You can easily tweak the nginx config in ```nginx/default.conf```
