# Dockerfile (Alpine)
FROM n8nio/n8n:latest

USER root
# (si hiciera falta, garantiza que 'community' esté habilitado)
# RUN echo "https://dl-cdn.alpinelinux.org/alpine/latest-stable/community" >> /etc/apk/repositories
RUN apk update && apk add --no-cache \
    libreoffice libreoffice-calc \
    ghostscript \
    ttf-dejavu ttf-liberation \
    noto-fonts noto-fonts-cjk \
    fontconfig
ENV HOME=/tmp LANG=C.UTF-8
USER node

EXPOSE 5678
