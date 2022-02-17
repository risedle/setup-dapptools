#!/bin/sh -l

nix-env -iA dapp -f https://github.com/dapphub/dapptools/archive/refs/tags/hevm/0.49.0.tar.gz
nix-env -iA hevm -f https://github.com/dapphub/dapptools/archive/refs/tags/hevm/0.49.0.tar.gz
nix-env -iA seth -f https://github.com/dapphub/dapptools/archive/refs/tags/hevm/0.49.0.tar.gz

