# echo-server

Just a simple echo server based on Docker.

## Sample:

Request via curl:

```
curl http://localhost:1989/path?param=value
```

Response:

```
Thu Oct 13 2016 04:40:04 GMT+0000 (UTC): [GET] /path?param=value {"host":"localhost:1989","user-agent":"curl/7.49.1","accept":"*/*"}
```
