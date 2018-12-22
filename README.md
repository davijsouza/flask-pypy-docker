# flask-pypy-docker
Simple Flask Project Boilerplate with PyPy and Docker

clone this repository
```
git clone git@github.com:yudanta/flask-pypy-docker.git

# change directory
cd flask-pypy-docker
```


### run with docker-compose
```
docker-compose up 

# or with build command

docker-compose up --build
```

Test access from docker 
```
# exposed port 8001

curl -I http://localhost:8001

{
  "msg": "Lavender", 
  "systime": 1545482007
}


```