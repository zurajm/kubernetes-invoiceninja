# Invoiceninja on Kubernetes
![invoiceninja](https://github.com/invoiceninja/invoiceninja/raw/master/public/images/footer-logo.png) + ![kubernetes](https://github.com/zurajm/kubernetes-invoiceninja/raw/master/kubernetes.png)
This repo is for building multiarch Docker image from official Invoiceninja GitHub [repo](https://github.com/invoiceninja/dockerfiles). When deploying please note that some *secrets* and *configmaps* are encrypted ([git-crypt](https://www.agwa.name/projects/git-crypt/)) so you will have to create them yourself.

## Building the images
For more in-depth tutorial please see [this](https://community.arm.com/developer/tools-software/tools/b/tools-software-ides-blog/posts/getting-started-with-docker-for-arm-on-linux).

```bash
docker run --privileged docker/binfmt:66f9012c56a8316f9244ffd7622d7c21c1f6f28d
docker buildx create --name mybuilder
docker buildx use mybuilder
docker buildx inspect --bootstra
# Replace tag user and tag with correct values
docker buildx build --platform linux/amd64,linux/arm64 --push -t zurajm/invoiceninja:alpine-4.5.17
```
