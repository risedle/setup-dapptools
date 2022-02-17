# setup-dapptools

This action provides access to dapptools for GitHub Actions users.

# Usage

See [action.yaml](action.yaml)

**Basic:**
```yaml
steps:
  - uses: actions/checkout@v2
  - uses: risedle/setup-dapptools@v3
  - run: dapp build
```

### dapptools version

You can add `tarball` as the input to specify the dapptools version:

```yaml
steps:
  - uses: actions/checkout@v2
  - uses: risedle/setup-dapptools@v3
    with:
      tarball: "https://github.com/dapphub/dapptools/archive/refs/tags/hevm/0.49.0.tar.gz"
  - run: dapp build
```

### solc version

You can also install the specific solc version using the following configuration:

```yaml
steps:
  - uses: actions/checkout@v2
  - uses: risedle/setup-dapptools@v3
    with:
      solc: "solc_0_8_11"
  - run: dapp build
```

For a list of the supported solc versions, check [solc-static-versions.nix](https://github.com/dapphub/dapptools/blob/master/nix/solc-static-versions.nix).


# License

The scripts and documentation in this project are released under the [MIT License](LICENSE)
