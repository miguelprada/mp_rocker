# vim-based development helpers
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y \
        build-essential \
        clang \
        clang-format-6.0 \
        clang-format-10 \
        clang-tidy-6.0 \
        clang-tidy-10 \
        clangd-10 \
        cmake \
        gdb \
        git \
        less \
        vim-nox \
    && apt-get clean
