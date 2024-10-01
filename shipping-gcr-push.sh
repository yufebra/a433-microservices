docker build -t shipping-service:latest ./shipping-service

# Merubah nama
docker tag shipping-service:latest ghcr.io/yufebra/shipping-service:latest

# Melakukan login ke docker dengan command
docker login ghcr.io -u yufebra

# Push ke hub
docker push ghcr.io/yufebra/shipping-service:latest