docker build -t shipping-service:latest ./shipping-service

# Merubah nama
docker tag shipping-service:latest yufebra/shipping-service:latest

# Melakukan login ke docker dengan command
docker login

# Push ke hub
docker push yufebra/shipping-service:latest