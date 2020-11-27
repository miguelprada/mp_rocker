# vim-based development helpers
RUN apt-get update \
    && apt-get install -y \
        vim \
    && apt-get clean
