docker build -t karsajobs-ui:latest .

# Merubah nama
docker tag karsajobs:latest yufebra/karsajobs-ui:latest

# Melakukan login ke docker dengan command
docker login

# Push ke hub
docker push yufebra/karsajobs-ui:latest