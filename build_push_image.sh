docker build -t item-app:v1
docker image ls -a
docker tag my-image:v1 yufebra/item-app:v1
docker login
docker push yufebra/item-app:v1