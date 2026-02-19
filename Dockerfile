# Usa uma imagem oficial e super leve de um servidor web
FROM nginx:alpine

# Remove a página padrão do Nginx (opcional, mas é uma boa prática)
RUN rm -rf /usr/share/nginx/html/*

# Copia o seu arquivo da apresentação para a pasta pública do servidor
COPY ./index.html /usr/share/nginx/html/index.html

# Expõe a porta padrão da web
EXPOSE 80