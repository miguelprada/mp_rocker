# vim-based development helpers
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y \
        build-essential \
        clang \
        clang-format \
        clang-tidy \
        cmake \
        gdb \
        git \
        less \
        vim-nox \
    && apt-get clean
