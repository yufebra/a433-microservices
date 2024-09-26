# Menggunakan node sebagai base image dari image yang akan dibangun
FROM node:14
WORKDIR /app
COPY . .
ENV NODE_ENV=production DB_HOST=item-db

# Menjalankan command install package npm hanya yang di devDependency dan sebagai root. Dilanjutkan build app
RUN npm install --production --unsafe-perm && npm run build
EXPOSE 8080

# Menjalankan command start di package.json
CMD [ "npm", "start" ]