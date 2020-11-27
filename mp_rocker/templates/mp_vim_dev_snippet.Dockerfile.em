# vim-based development helpers
RUN apt-get update \
    && apt-get install -y \
        git \
        vim \
    && apt-get clean
