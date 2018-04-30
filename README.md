# TLMCA 
## TLM Certificate Authority 

```
$ docker volume create tlmca_data
$ docker run -t -v tlmca_data:/opt/out/ -p 9418:9418 -p 80:80 quay.io/spivegin/tlmgit
```
