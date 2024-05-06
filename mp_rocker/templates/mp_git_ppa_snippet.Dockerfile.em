RUN apt-get update \
    && apt-get install -y \
        software-properties-common \
    && rm -rf /var/lib/apt/lists/*

RUN add-apt-repository ppa:git-core/ppa

RUN apt-get update \
    && apt-get install -y \
        git \
    && rm -rf /var/lib/apt/lists/*
