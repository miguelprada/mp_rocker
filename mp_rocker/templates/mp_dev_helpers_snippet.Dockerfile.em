# Development-related required and optional utils
RUN export DEBIAN_FRONTEND=noninteractive; \
    apt-get update \
    # Check optional packages (https://askubuntu.com/a/1333505)
    && EXISTING_OPTIONAL_PACKAGES=$(apt-cache --generate pkgnames | grep --line-regexp --fixed-strings \
      -e clang-format-6.0 \
      -e clang-format-10 \
      -e clang-format-18 \
      -e clang-format \
      -e clang-tidy-6.0 \
      -e clang-tidy-10 \
      -e clang-tidy-18 \
      -e clang-tidy \
      -e clangd-10 \
      -e clangd-18 \
      -e clangd \
      -e ripgrep) \
    # Required packages
    && apt-get install -y \
        build-essential \
        clang \
        cmake \
        gdb \
        git \
        git-lfs \
        less \
        python3-pip \
        ssh \
        tree \
        xclip \
        ${EXISTING_OPTIONAL_PACKAGES} \
    # Clean
    && apt-get clean \
    && PIP_BREAK_SYSTEM_PACKAGES=1 python3 -m pip install \
        black \
        isort \
        vcstool \
        git+https://github.com/rhaschke/colcon-top-level-workspace.git#egg=colcon-top-level-workspace
