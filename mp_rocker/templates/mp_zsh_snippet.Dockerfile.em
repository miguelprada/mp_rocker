# zsh shell
RUN apt-get update \
    && apt-get install -y \
        git \
        zsh \
    && apt-get clean
