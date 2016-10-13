'use strict';
const http = require('http');
const url = require('url');
const port = 8080;

http.createServer((req, res) => {
  req.on('error', err => {
    console.error(err);
    res.statusCode = 400;
    res.end();
  });
  res.on('error', err => {
    console.error(err);
  });
  const msg = new Date() + ': [' + req.method + '] ' + url.parse(req.url, true).href + ' ' + JSON.stringify(req.headers);
  console.log(msg);
  res.end(msg);
}).listen(port);
