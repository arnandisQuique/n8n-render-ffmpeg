FROM n8nio/n8n:latest

USER root

# Instalar ffmpeg
RUN apt-get update && apt-get install -y ffmpeg

USER node
