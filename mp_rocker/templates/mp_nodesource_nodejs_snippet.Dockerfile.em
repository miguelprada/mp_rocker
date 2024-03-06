# Install Node.js from binary NodeSource distribution
RUN apt-get update \
    && apt-get install -y \
        apt-transport-https \
        ca-certificates \
        curl \
        gnupg-agent \
        software-properties-common \
    && rm -rf /var/lib/apt/lists/*

RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash -

RUN apt-get update \
    && apt-get install -y \
        nodejs \
    && rm -rf /var/lib/apt/lists/*
