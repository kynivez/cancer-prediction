FROM node:18.17.1

# Menentukan direktori kerja di dalam container
WORKDIR /app

# Set environment variables dengan format yang benar
ENV PORT=3000
ENV MODEL_URL="https://storage.googleapis.com/submissionml-mrizky/model-in-prod/model.json"

# Menyalin semua file dari direktori proyek ke dalam container
COPY . .

# Menginstal dependensi dari package.json
RUN npm install

# Menyediakan port untuk aplikasi
EXPOSE 3000

# Menjalankan aplikasi
CMD ["npm", "run", "start"]
