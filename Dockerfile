# Menggunakan node 16 berbasis alpine linux
FROM node:16-alpine

# Working directory untuk image ini diatur ke /app
WORKDIR /app

# Memindahkan semua isi direktori kerja ke dalam /app
COPY . .

# Menjalankan npm install
RUN npm install

# Membuka port 3000 untuk Order service
EXPOSE 3000

# Membuka RabbitMQ's yaitu default AMQP port
EXPOSE 5672

# Mendefinisikan url AMQP_URL awal
ENV AMQP_URL=amqp://rabbitmq:5672

# Menjalankan aplikasi, setara dengan "node index.js" karena tertulis di package.json
CMD ["npm", "start"]