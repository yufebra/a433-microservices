docker build -t karsajobs:latest .

# Merubah nama
docker tag karsajobs:latest yufebra/karsajobs:latest

# Melakukan login ke docker dengan command
docker login

# Push ke hub
docker push yufebra/karsajobs:latest