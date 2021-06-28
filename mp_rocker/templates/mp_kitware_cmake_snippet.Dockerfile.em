# Install cmake from Kitware repositories. See https://apt.kitware.com/
RUN apt-get update \
    && apt-get install -y \
        apt-transport-https \
        ca-certificates \
        gnupg \
        lsb-release \
        software-properties-common \
        wget \
    && rm -rf /var/lib/apt/lists/*

RUN wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null

RUN echo "deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/kitware.list >/dev/null \
    && apt-get update

RUN apt-get update \
    && apt-get install -y \
        cmake \
    && rm /usr/share/keyrings/kitware-archive-keyring.gpg \
    && apt-get install -y \
        kitware-archive-keyring \
    && rm -rf /var/lib/apt/lists/*
