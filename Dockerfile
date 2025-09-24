FROM node:22-bullseye

# Instalar ffmpeg
RUN apt-get update && apt-get install -y ffmpeg && rm -rf /var/lib/apt/lists/*

# Crear directorio de trabajo
WORKDIR /usr/src/app

# Copiar package.json
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto del código
COPY . .

# Exponer puerto de n8n
EXPOSE 5678

# Comando de inicio
CMD ["n8n", "start"]
