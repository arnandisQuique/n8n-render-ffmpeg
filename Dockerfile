FROM docker.n8n.io/n8nio/n8n:latest-debian

USER root

# Cambiar repos de Debian Buster a los repos archivados
RUN sed -i 's|deb.debian.org|archive.debian.org|g' /etc/apt/sources.list \
    && sed -i 's|security.debian.org|archive.debian.org|g' /etc/apt/sources.list \
    && sed -i '/^deb .*updates/d' /etc/apt/sources.list \
    && apt-get update \
    && apt-get install -y ffmpeg \
    && rm -rf /var/lib/apt/lists/*

USER node
