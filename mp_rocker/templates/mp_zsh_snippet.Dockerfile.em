# zsh shell
RUN apt-get update \
    && apt-get install -y \
        zsh \
    && apt-get clean
