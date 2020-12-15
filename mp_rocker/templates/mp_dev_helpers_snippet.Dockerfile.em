# vim-based development helpers
RUN apt-get update \
    && apt-get install -y \
        build-essential \
        cmake \
        gdb \
        git \
        vim \
    && apt-get clean
