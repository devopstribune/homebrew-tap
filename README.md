# DevOps Tribune Homebrew Tap

Official Homebrew tap for the [DevOps Tribune CLI (`dt`)](https://www.devopstribune.com/cli/).

## Installation

```bash
brew tap devopstribune/tap
brew install dt
```

Or install in a single command:

```bash
brew install devopstribune/tap/dt
```

## Quick Start

```bash
# Check version & status
dt version
dt status

# Offline developer utilities
dt tools cidr 10.0.0.0/24
dt tools cron "*/15 * * * *"
dt tools pass 24 --symbols
dt tools base64 encode "production-secret"
dt tools hash sha256 "payload"
dt tools jwt decode "<jwt-token>"

# Interactive interview prep
dt interview platform
dt interview kubernetes

# Latest engineering intelligence
dt news --limit 5
```

## Documentation

- [CLI Documentation & Terminal Hub](https://www.devopstribune.com/cli/)
- [Architecture & Deployment Guide](https://www.devopstribune.com/articles/devopstribune-cli-dt/)
- [Source Repository](https://github.com/devopstribune/dt)

## License

[Apache 2.0](https://github.com/devopstribune/dt/blob/main/LICENSE) &copy; DevOps Tribune.
