<!-- TODO: add instructions to run shellcheck, add license file, make an unique readme? -->

# Zsh Custom

My custom Zsh plugins and themes 🤓

- **[Usage](#usage)**

- **[Plugins](plugins)**
  - [`profile`](plugins#profile)
  - [`gatekeeper`](plugins#gatekeeper)
  - [`node_modules`](plugins#node-modules)

- **[Themes](themes)**
  - [`squanchy`](themes#squanchy)

- **[Contributing](#contributing)**

## Usage

Clone the extension you want to your `$ZSH_CUSTOM`:

```shell
ext_name="squanchy" # TODO: change with the wanted extension
ext_type="theme" # TODO: use the correct type
ext_path="${ext_type}s/${ext_name}$([ $ext_type = theme ] && echo .zsh-theme || echo .plugin.zsh)"
curl https://raw.githubusercontent.com/gabrielecanepa/zsh-custom/master/$ext_path > "$ZSH_CUSTOM/$ext_path"
```

Activate the new plugin/theme in your `~/.zshrc`:

```shell
ZSH_THEME="squanchy"

plugins=(
  # ...
  gatekeeper
  node-modules
  profile
  # ...
  themes # use it to switch theme with `theme <theme-name>`
)
```

## Contributing

Please [fork the repository](./fork) and [create a new issue](./issues/new/choose) or pull request 🙏

## License

[MIT](https://github.com/gabrielecanepa/.github/blob/master/LICENSE)
