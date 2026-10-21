dotfiles configured based on: https://www.atlassian.com/git/tutorials/dotfiles

## Tools

### Finicky

[Finicky](https://github.com/johnste/finicky) is a macOS link router that opens
external links in specific browsers or Chrome profiles. Its configuration is
[`.finicky.js`](.finicky.js), installed at `~/.finicky.js` by this dotfiles setup.
This config uses Finicky v4 syntax.

Install with Homebrew:

```sh
brew install --cask finicky
```

Launch Finicky from Applications and set it as the default web browser when
prompted, or select it in **System Settings > Desktop & Dock > Default web
browser**.

Create Chrome profiles with these exact, case-sensitive names, or update the
profile names in `.finicky.js` to match your setup:

| GitHub organization | Chrome profile |
| --- | --- |
| `microsoft` | `Work (Microsoft)` |
| `github` | `GitHub` |
| `coreai-microsoft` | `Github EMU` |

All other URLs open in Chrome without a profile override, leaving Chrome to use
its last-used profile. The rules also recognize GitHub destinations inside Teams
Safe Links wrappers while preserving the original security-check URL.

If links open in the wrong profile, Finicky may lack permission to read Chrome's
profile metadata. In **System Settings > Privacy & Security > Full Disk Access**,
click **+**, add `/Applications/Finicky.app`, and enable it. Quit and reopen Finicky
after changing permissions.

Test by clicking a matching GitHub link in another app, or run:

```sh
open https://github.com/microsoft/vscode
```

Normal links clicked inside a browser stay in that browser unless explicitly sent
through Finicky, for example with its browser extension. See the
[Finicky configuration documentation](https://github.com/johnste/finicky/wiki/Configuration-%28v4%29)
for more rules and options.