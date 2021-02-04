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

RUN wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | sudo tee /etc/apt/trusted.gpg.d/kitware.gpg >/dev/null

RUN add-apt-repository "deb https://apt.kitware.com/ubuntu/ $(lsb_release -sc) main"

RUN apt-get update \
    && apt-get install -y \
        cmake \
        kitware-archive-keyring \
    && rm -rf /var/lib/apt/lists/* \
              /etc/apt/trusted.gpg.d/kitware.gpg

