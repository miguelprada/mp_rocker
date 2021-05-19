# vim-based development helpers
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y \
        build-essential \
        clang \
        cmake \
        gdb \
        git \
        less \
        vim-nox \
    && { DEBIAN_FRONTEND=noninteractive apt-get install -y clang-format-6.0; \
         DEBIAN_FRONTEND=noninteractive apt-get install -y clang-format-10; \
         DEBIAN_FRONTEND=noninteractive apt-get install -y clang-tidy-6.0; \
         DEBIAN_FRONTEND=noninteractive apt-get install -y clang-tidy-10; \
         DEBIAN_FRONTEND=noninteractive apt-get install -y clangd-10; \
         true; } \
    && apt-get clean
