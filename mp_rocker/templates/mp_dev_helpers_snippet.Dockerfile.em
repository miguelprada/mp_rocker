# vim-based development helpers
RUN apt-get update \
    && apt-get install -y \
        build-essential \
        clang \
        clang-format \
        clang-tidy \
        cmake \
        gdb \
        git \
        vim-nox \
    && apt-get clean
