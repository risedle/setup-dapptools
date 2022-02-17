#!/bin/sh -l

nix-env -iA dapp -f $(curl -sS https://api.github.com/repos/dapphub/dapptools/releases/latest | jq -r .tarball_url)
nix-env -iA hevm -f $(curl -sS https://api.github.com/repos/dapphub/dapptools/releases/latest | jq -r .tarball_url)
nix-env -iA seth -f $(curl -sS https://api.github.com/repos/dapphub/dapptools/releases/latest | jq -r .tarball_url)
