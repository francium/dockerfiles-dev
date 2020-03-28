FROM debian:stable-slim

RUN echo -n "\n##### Updating package cache and installing apt-utils #####\n\n"
# Since we're using slim version, we need to install apt-utils
RUN apt-get update && apt-get install --yes apt-utils


# Set timezone #################################################################
RUN echo -n "\n##### Setting timezone #####\n\n"

RUN apt-get install --yes \
  tzdata

ENV TZ="Canada/Eastern"
RUN ln -fs /usr/share/zoneinfo/$TZ /etc/localtime \
    && \
    dpkg-reconfigure -f noninteractive tzdata

RUN apt-get purge --yes tzdata


# USER AND GROUPS ##############################################################
RUN echo -n "\n##### Creating user #####\n\n"

ENV USER="francium"

RUN \
  useradd \
    # same group as user
    --user-group \
    --create-home \
    --shell /bin/bash \
    $USER \
  && \
  # Change $USER's password
  echo "$USER:$(dd if=/dev/urandom bs=24 count=1 status=none | base64)" | chpasswd


# Purge unused packages and clean cache ########################################
RUN echo -n "\n##### Performing clean up to reduce image size #####\n\n"

RUN rm -rf /var/lib/apt/lists/* /var/cache/apt/
