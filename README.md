# setup-dapptools

This action provides access to dapptools for GitHub Actions users.

# Usage

See [action.yaml](action.yaml)

**Basic:**
```yaml
steps:
  - uses: actions/checkout@v2
  - uses: risedle/setup-dapptools@v2
  - run: dapp build
```

You can add `tarballURL` as the input to specify the dapptools version:

```yaml
steps:
  - uses: actions/checkout@v2
  - uses: risedle/setup-dapptools@v2
    with:
      tarballURL: "https://github.com/dapphub/dapptools/archive/refs/tags/hevm/0.49.0.tar.gz"
  - run: dapp build
```


# License

The scripts and documentation in this project are released under the [MIT License](LICENSE)
