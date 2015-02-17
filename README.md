CitizenWatt-docker
==================

This is a docker image for CitizenWatt base visualization, for demo purposes. See https://github.com/CitoyensCapteurs/CitizenWatt-Base for more infos.


## How to use this image

First, build the image:

```
docker build --tag citizenwatt .
```


Then, run the container:

```
docker run -t -i -p 8080:8080 citizenwatt
```


You can then head to `http://localhost:8080` on your computer and you should see the CitizenWatt visualization.
