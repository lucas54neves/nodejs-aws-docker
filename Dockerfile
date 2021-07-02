# Imagem do Node
FROM node:current-alpine

# Diretorio da aplicacao
WORKDIR /usr/app

# Copia os arquivos package.json e yarn.lock para o diretorio
COPY package.json yarn.lock ./

# Instala as dependencias
RUN yarn

# Copia os arquivos restantes
COPY . .

# Expor a port 3000
EXPOSE 3000

# Rodar servidor
CMD [ "yarn", "start"]