FROM archlinux:20200407

# Timezone
ENV TZ=Canada/Eastern

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
