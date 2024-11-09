FROM ghcr.io/qtvhao/debian-smb:main
RUN echo "deb http://mirror.sg.gs/debian/ bookworm main contrib non-free" > /etc/apt/sources.list
RUN echo "deb http://mirror.sg.gs/debian/ bookworm-updates main contrib non-free" >> /etc/apt/sources.list
WORKDIR /app/

USER root

# Update package list and install dependencies
RUN apt-get update && \
    apt-get install -y \
    ffmpeg \
    curl \
    git \
    build-essential \
    libssl-dev \
    zlib1g-dev \
    libbz2-dev \
    libreadline-dev \
    libsqlite3-dev \
    wget \
    llvm \
    libncurses5-dev \
    libncursesw5-dev \
    xz-utils \
    tk-dev \
    libffi-dev \
    liblzma-dev \
    python3-openssl \
    ca-certificates && \
    rm -rf /var/lib/apt/lists/*

RUN curl https://pyenv.run | bash
