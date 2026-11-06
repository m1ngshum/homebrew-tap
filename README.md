# vpn-pin Homebrew tap

Install the early vpn-pin prerelease on macOS:

```sh
brew install m1ngshum/tap/vpn-pin
vpn-pin --version
```

If Homebrew requests trust for a third-party formula, trust only `m1ngshum/tap/vpn-pin` when prompted.

Update through Homebrew:

```sh
brew update
brew upgrade m1ngshum/tap/vpn-pin
```

Stop watchers and tunnels explicitly before upgrading and restart them afterward. Installation does not start a VPN, create a profile, or change live routes. Configurations and credentials stay outside the install prefix.

The formula comes from the checksummed [vpn-pin prerelease](https://github.com/m1ngshum/vpn-pin/releases/tag/v0.2.0-rc.5). It uses Homebrew Python and OpenVPN dependencies. See the [project](https://github.com/m1ngshum/vpn-pin) for configuration and limitations. The project release notes document bounded live checks and remaining compatibility limits. This tap distributes an early prerelease.

Formula updates must use the generated formula from a verified release. CI installs the checked-out formula and runs its non-networking CLI version test; it never starts a tunnel.
