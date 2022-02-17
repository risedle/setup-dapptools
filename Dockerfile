FROM nixos/nix

RUN nix-channel --update

COPY install-dapptools.sh /install-dapptools.sh

ENTRYPOINT ["/install-dapptools.sh"]