# Imagen Alpine de n8n
FROM n8nio/n8n:1.110.2

USER root

# Repos ya traen main+community; instalamos LibreOffice + fuentes
RUN apk update && apk add --no-cache \
    libreoffice \
    ghostscript \
    ttf-dejavu ttf-liberation \
    font-noto font-noto-cjk \
    fontconfig

# Variables que ayudan en headless
ENV HOME=/tmp LANG=C.UTF-8

USER node
EXPOSE 5678
