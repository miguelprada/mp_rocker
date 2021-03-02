RUN apt-get update \
    && apt-get install -y \
        software-properties-common \
    && rm -rf /var/lib/apt/lists/*

RUN add-apt-repository ppa:neovim-ppa/unstable

RUN apt-get update \
    && apt-get install -y \
        neovim \
    && rm -rf /var/lib/apt/lists/* \
              /etc/apt/trusted.gpg.d/kitware.gpg

