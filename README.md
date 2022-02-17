# setup-dapptools

This action provides the following functionality for GitHub Actions users:

- Optionally downloading and caching distribution of the requested dapptools version, and adding it to the PATH

# Usage

See [action.yaml](action.yaml)

**Basic:**
```yaml
steps:
- uses: actions/checkout@v2
- uses: risedle/setup-dapptools@v2
- run: dapp build
```

# License

The scripts and documentation in this project are released under the [MIT License](LICENSE)
