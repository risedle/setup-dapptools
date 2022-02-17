#!/bin/sh -l

set -e

tmpfile=$(mktemp)
trap 'rm $tmpfile' EXIT

cat > "$tmpfile" <<'EOF'
  GREEN='\033[0;32m'
  RED='\033[0;31m'
  NC='\033[0m'

  oops() {
    >&2 echo -e "${RED}error:${NC} $1"
    exit 1
  }

  cachix use dapp
  command -v solc >/dev/null || solc="solc"
  nix-env -iA dapp hevm seth ethsign "$solc" -f https://github.com/dapphub/dapptools/archive/refs/tags/hevm/0.49.0.tar.gz

  echo -e "${GREEN}All set!${NC}"
EOF

nix-shell --pure -p cacert cachix curl git jq nix --run "sh $tmpfile"
which dapp
