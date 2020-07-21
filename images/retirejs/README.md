RetireJS Docker file
===================

retire.js cli tool image

Build
----- 
```shell script
dockerRepo=docker.io

./build.sh ${dockerRepo}
```

Package info
------------
retire [npm packages](https://www.npmjs.com/package/retire)

Usage
-----
```shell script
docker run --rm -v $PWD:/app arielev/retirejs:2.2.1 -v
```
