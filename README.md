<!-- TODO: add instructions to run shellcheck -->

# Zsh Custom

My custom Zsh plugins and themes 🤓

- **[Usage](#usage)**

- **[Plugins](https://github.com/gabrielecanepa/zsh-custom/blob/master/plugins)**
  - [`profile`](https://github.com/gabrielecanepa/zsh-custom/blob/master/plugins#profile)
  - [`gatekeeper`](https://github.com/gabrielecanepa/zsh-custom/blob/master/plugins#gatekeeper)
  - [`node-modules`](https://github.com/gabrielecanepa/zsh-custom/blob/master/plugins#node-modules)

- **[Themes](https://github.com/gabrielecanepa/zsh-custom/blob/master/themes)**
  - [`squanchy`](https://github.com/gabrielecanepa/zsh-custom/blob/master/themes#squanchy)

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
# ~/.zshrc

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

If you want to help improve the project, please [fork the repository](https://github.com/gabrielecanepa/zsh-custom/fork) and [create a new issue](https://github.com/gabrielecanepa/zsh-custom/issues/new/choose) or pull request 🙏

## License

[MIT](https://github.com/gabrielecanepa/.github/blob/master/LICENSE)
