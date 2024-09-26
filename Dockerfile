# Menggunakan node sebagai base image dari image yang akan dibangun
FROM node:14

# Mengatur working directory untuk image
WORKDIR /app

# Menyalin semua source code dari project ke work dir
COPY . .

# Mengatur environment variable yang akan digunakan
ENV NODE_ENV=production DB_HOST=item-db

# Menjalankan command install package npm hanya yang di devDependency dan sebagai root. Dilanjutkan build app
RUN npm install --production --unsafe-perm && npm run build

# Buka port 8080 untuk listen container nantinya
EXPOSE 8080

# Menjalankan command start di package.json
CMD [ "npm", "start" ]