Vault-Helm charts test Docker file
===================

Image contains [bats-core](https://github.com/bats-core/bats-core),
[yq](https://github.com/kislyuk/yq), git, bash, python3, py3-pip, jq

Build
----- 
```shell script
dockerRepo=docker.io ./build.sh ${dockerRepo}
```

Usage
-----
originally this image created to test [Vault-Helm](https://github.com/hashicorp/vault-helm) chart.  
cd to root of the `vault-helm` repo directory,
and execute
```shell script
docker run -it --rm -v "${PWD}:/test" arielev/vault-helm-test:1.3.0 /test/test/unit
# or run a specific test(s) all related to csi (regular expression)
docker run -it --rm -v "${PWD}:/test" arielev/vault-helm-test:1.3.0 /test/test/unit -f "csi"
```
