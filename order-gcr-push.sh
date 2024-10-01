docker build -t order-service:latest ./order-service

# Merubah nama
docker tag order-service:latest ghcr.io/yufebra/order-service:latest

# Melakukan login ke Github Packages dengan command
docker login ghcr.io -u yufebra

# Push ke Github Packages
docker push ghcr.io/yufebra/order-service:latest