FROM nixos/nix

RUN apk update \
    && apk add jq \
    && apk add curl \
    && rm -rf /var/cache/apk/*

RUN nix-channel --update

COPY install-dapptools.sh /install-dapptools.sh

ENTRYPOINT ["/install-dapptools.sh"]