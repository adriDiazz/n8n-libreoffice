# Dockerfile
FROM n8nio/n8n:latest

USER root

# Paquetes útiles:
# - libreoffice + calc: conversión xls/xlsx → pdf
# - ghostscript: utilidades PDF
# - fonts-* : reduce problemas de tipografías
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    libreoffice libreoffice-calc \
    ghostscript \
    fonts-dejavu fonts-liberation fonts-noto-core fonts-noto-cjk \
    fonts-crosextra-carlito fonts-crosextra-caladea && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Variables que ayudan a LibreOffice en headless
ENV HOME=/tmp \
    LANG=C.UTF-8

# n8n corre como usuario "node"
USER node

# (opcional) Puerto explícito para claridad
EXPOSE 5678
