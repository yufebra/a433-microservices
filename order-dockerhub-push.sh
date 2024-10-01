docker build -t order-service:latest ./order-service

# Merubah nama
docker tag order-service:latest yufebra/order-service:latest

# Melakukan login ke docker dengan command
docker login

# Push ke hub
docker push yufebra/order-service:latest