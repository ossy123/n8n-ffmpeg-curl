FROM n8nio/n8n:latest

# Switch to the root user to install packages
USER root

# Install dependencies using apt-get for Debian-based images
RUN apk add --no-cache \
    bash \
    curl \
    bc \
    ffmpeg \
    ffmpeg-dev \
    fontconfig \
    # Clean up package lists to keep the image size small
    && rm -rf /var/lib/apt/lists/*

# Switch back to the default non-privileged user
USER node
