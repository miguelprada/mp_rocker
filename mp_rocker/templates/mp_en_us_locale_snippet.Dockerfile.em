# Set en_US.UTF-8 locale
RUN apt-get update \
    && apt-get install -y \
        locales \
    && apt-get clean

RUN sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen && locale-gen
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
