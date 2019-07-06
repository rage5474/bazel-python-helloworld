FROM gitpod/workspace-full

RUN sudo apt-get update \
 && sudo apt-get install -y \
    pkg-config \
    zip \
    g++ \
    zlib1g-dev \
    unzip \
    python3 \
 && sudo rm -rf /var/lib/apt/lists/*