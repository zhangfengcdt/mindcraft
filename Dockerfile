FROM node:20

# Install dependencies needed to build canvas and gl
RUN apt-get update && apt-get install -y \
    build-essential \
    libcairo2-dev \
    libpango1.0-dev \
    libjpeg-dev \
    libgif-dev \
    librsvg2-dev \
    libgl1-mesa-dev \
    libglu1-mesa-dev \
    libxi-dev \
    libxmu-dev \
    python3 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
