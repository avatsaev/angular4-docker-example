
# Dockerized Angular 4 App (with Angular CLI)

## Build docker image

```
$ docker build -t myapp . 
```

## Run the container

```
$ docker run -d -p 8080:80 myapp
```


The app will be available at http://localhost:8080
