docker build -t karsajobs-ui:latest .

# Merubah nama image menjadi memiliki namespace
docker tag karsajobs-ui:latest yufebra/karsajobs-ui:latest

# Melakukan login ke docker dengan command
docker login

# Push ke hub
docker push yufebra/karsajobs-ui:latest