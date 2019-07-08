Build
-----
Execute:
```bash
argocd_cli_version=v1.0.2

docker build \
    --build-arg VERSION=${argocd_cli_version} \
    -t arielev/argocd-cli:${argocd_cli_version} .
docker push arielev/argocd-cli:${argocd_cli_version}
```  

