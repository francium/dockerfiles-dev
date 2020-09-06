FROM francium/dev/base-debian

RUN apt-get update \
    && apt-get install --yes \
        ghc \
        cabal-install
RUN rm -rf /var/lib/apt/lists/* /var/cache/apt/

USER francium
