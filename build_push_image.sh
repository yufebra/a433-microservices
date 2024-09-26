docker build -t item-app:v1 .

# Menampilkan semua image
docker image ls -a

# Merubah nama
docker tag my-image:v1 yufebra/item-app:v1

# Melakukan login ke docker dengan command
docker login
docker push yufebra/item-app:v1