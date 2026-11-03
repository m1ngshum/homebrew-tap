# Homebrew tap

Formula updates must come from a verified vpn-pin release asset, with its URL and SHA-256 intact. Do not independently guess or edit a checksum. Follow the project's [release skill](https://github.com/m1ngshum/vpn-pin/blob/main/.agents/skills/vpn-pin-release/SKILL.md) for authorized publication and update work.

CI must install the formula from the current checkout and run `brew test`. Keep Actions tokens read-only, checkout pinned, and credentials unpersisted. Never start VPN tunnels, read private client configurations, or change routes in packaging tests.
