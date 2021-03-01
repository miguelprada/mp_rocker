RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y \
        python3 \
        python3-pip \
    && apt-get clean

RUN pip3 install jupyterlab

