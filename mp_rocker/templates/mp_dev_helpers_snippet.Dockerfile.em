# Development-related required and optional utils
RUN DEBIAN_FRONTEND=noninteractive; \
    apt-get update \
    # Required packages
    && apt-get install -y \
        build-essential \
        clang \
        cmake \
        gdb \
        git \
        less \
    # Optional packages
    && { apt-get install -y clang-format-6.0; \
         apt-get install -y clang-format-10; \
         apt-get install -y clang-tidy-6.0; \
         apt-get install -y clang-tidy-10; \
         apt-get install -y clangd-10; \
         true; } \
    && apt-get clean
